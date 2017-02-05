/*
 * SimpleTextEditor.m
 * This file is part of SimpleTextEditor
 *
 * Copyright (C) 2015 - Tyler Burton
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */

/*
 * Objective-C imports
 */
#import "SimpleTextEditor.h"

@implementation SimpleTextEditor

- (id) init {
    self = [super init];

    if (self) {
        CGTKBuilder * builder = [[CGTKBuilder alloc] init];
        OFString * guiGlade = [OFString stringWithContentsOfFile:@"gui.glade"];

        if (![builder addFromStringWithBuffer:guiGlade andLength:[guiGlade UTF8StringLength] andErr:NULL]) {
            of_log(@"Error loading GUI file");
            return nil;
        }

        OFDictionary * dic = [[OFDictionary alloc] initWithKeysAndObjects:
                              @"winMain_Destroy", [CGTKCallbackData withObject:self andSEL:@selector(winMain_Destroy)],
                              @"btnNew_Clicked", [CGTKCallbackData withObject:self andSEL:@selector(btnNew_Clicked)],
                              @"btnOpen_Clicked", [CGTKCallbackData withObject:self andSEL:@selector(btnOpen_Clicked)],
                              @"btnSave_Clicked", [CGTKCallbackData withObject:self andSEL:@selector(btnSave_Clicked)],
                              nil];

        [CGTKBaseBuilder connectSignalsToObjectsWithBuilder:builder andSignalDictionary:dic];

        // Get a reference to the window
        window = [CGTKBaseBuilder getWidgetFromBuilder:builder withName:@"winMain"];

        // Get a reference to the text view
        txtView = [[CGTKTextView alloc] initWithGObject:[[CGTKBaseBuilder getWidgetFromBuilder:builder withName:@"txtView"] WIDGET]];

        [builder release];
    }

    return self;
} /* init */

- (void) show {
    [window showAll];
}

- (void) winMain_Destroy {
    [CGTK mainQuit];
}

- (void) btnNew_Clicked {
    [self setText:@""];
}

- (void) btnOpen_Clicked {
    OFString * text = [OFString stringWithContentsOfFile:[MultiDialog presentOpenDialog]];

    [self setText:text];
}

- (void) btnSave_Clicked {
    OFString * filename = [MultiDialog presentSaveDialog];
    OFString * text = [self getText];

    [text writeToFile:filename];

}

- (OFString *) getText {
    gchar * gText = NULL;
    GtkTextBuffer * buf = NULL;
    GtkTextIter start, end;
    OFString * nsText = nil;

    // Grab reference to text buffer
    buf = [txtView getBuffer];

    // Determine the bounds of the buffer
    gtk_text_buffer_get_bounds(buf, &start, &end);

    // Get the gchar text from the buffer
    gText = gtk_text_buffer_get_text(buf, &start, &end, FALSE);

    // Convert it to an OFString
    nsText = [OFString stringWithUTF8String:gText];

    // Free the allocated gchar string
    g_free(gText);

    // Return the text
    return nsText;
} /* getText */

- (void) setText:(OFString *)text {
    // Get reference to text buffer
    GtkTextBuffer * buf = [txtView getBuffer];

    // Set contents of text buffer
    gtk_text_buffer_set_text(buf, [text UTF8String], -1);
}

- (void) dealloc {
    [txtView release];
    [window release];
    [super dealloc];
}

@end
