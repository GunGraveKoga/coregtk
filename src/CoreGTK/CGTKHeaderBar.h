/*
 * CGTKHeaderBar.h
 * This file is part of CoreGTK
 *
 * Copyright (C) 2016 - Tyler Burton
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
 * Modified by the CoreGTK Team, 2016. See the AUTHORS file for a
 * list of people on the CoreGTK Team.
 * See the ChangeLog files for a list of changes.
 *
 */

/*
 * Objective-C imports
 */
#import "CoreGTK/CGTKContainer.h"

@interface CGTKHeaderBar : CGTKContainer
{

}


/**
 * Constructors
 */
-(id)init;

/**
 * Methods
 */

-(GtkHeaderBar*)HEADERBAR;

/**
 * -(CGTKWidget**)getCustomTitle;
 *
 * @returns CGTKWidget*
 */
-(CGTKWidget*)getCustomTitle;

/**
 * -(OFString**)getDecorationLayout;
 *
 * @returns OFString*
 */
-(OFString*)getDecorationLayout;

/**
 * -(BOOL*)getHasSubtitle;
 *
 * @returns BOOL
 */
-(BOOL)getHasSubtitle;

/**
 * -(BOOL*)getShowCloseButton;
 *
 * @returns BOOL
 */
-(BOOL)getShowCloseButton;

/**
 * -(OFString**)getSubtitle;
 *
 * @returns OFString*
 */
-(OFString*)getSubtitle;

/**
 * -(OFString**)getTitle;
 *
 * @returns OFString*
 */
-(OFString*)getTitle;

/**
 * -(void*)packEnd:(CGTKWidget*) child;
 *
 * @param child
 */
-(void)packEnd:(CGTKWidget*) child;

/**
 * -(void*)packStart:(CGTKWidget*) child;
 *
 * @param child
 */
-(void)packStart:(CGTKWidget*) child;

/**
 * -(void*)setCustomTitle:(CGTKWidget*) titleWidget;
 *
 * @param titleWidget
 */
-(void)setCustomTitle:(CGTKWidget*) titleWidget;

/**
 * -(void*)setDecorationLayout:(OFString*) layout;
 *
 * @param layout
 */
-(void)setDecorationLayout:(OFString*) layout;

/**
 * -(void*)setHasSubtitle:(BOOL) setting;
 *
 * @param setting
 */
-(void)setHasSubtitle:(BOOL) setting;

/**
 * -(void*)setShowCloseButton:(BOOL) setting;
 *
 * @param setting
 */
-(void)setShowCloseButton:(BOOL) setting;

/**
 * -(void*)setSubtitle:(OFString*) subtitle;
 *
 * @param subtitle
 */
-(void)setSubtitle:(OFString*) subtitle;

/**
 * -(void*)setTitle:(OFString*) title;
 *
 * @param title
 */
-(void)setTitle:(OFString*) title;

@end
