/*
 * CGTKToolButton.h
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
#import "CoreGTK/CGTKToolItem.h"

@interface CGTKToolButton : CGTKToolItem
{

}


/**
 * Constructors
 */
-(id)initWithIconWidget:(CGTKWidget*) iconWidget andLabel:(OFString*) label;
-(id)initFromStock:(OFString*) stockId;

/**
 * Methods
 */

-(GtkToolButton*)TOOLBUTTON;

/**
 * -(OFString**)getIconName;
 *
 * @returns OFString*
 */
-(OFString*)getIconName;

/**
 * -(CGTKWidget**)getIconWidget;
 *
 * @returns CGTKWidget*
 */
-(CGTKWidget*)getIconWidget;

/**
 * -(OFString**)getLabel;
 *
 * @returns OFString*
 */
-(OFString*)getLabel;

/**
 * -(CGTKWidget**)getLabelWidget;
 *
 * @returns CGTKWidget*
 */
-(CGTKWidget*)getLabelWidget;

/**
 * -(OFString**)getStockId;
 *
 * @returns OFString*
 */
-(OFString*)getStockId;

/**
 * -(BOOL*)getUseUnderline;
 *
 * @returns BOOL
 */
-(BOOL)getUseUnderline;

/**
 * -(void*)setIconName:(OFString*) iconName;
 *
 * @param iconName
 */
-(void)setIconName:(OFString*) iconName;

/**
 * -(void*)setIconWidget:(CGTKWidget*) iconWidget;
 *
 * @param iconWidget
 */
-(void)setIconWidget:(CGTKWidget*) iconWidget;

/**
 * -(void*)setLabel:(OFString*) label;
 *
 * @param label
 */
-(void)setLabel:(OFString*) label;

/**
 * -(void*)setLabelWidget:(CGTKWidget*) labelWidget;
 *
 * @param labelWidget
 */
-(void)setLabelWidget:(CGTKWidget*) labelWidget;

/**
 * -(void*)setStockId:(OFString*) stockId;
 *
 * @param stockId
 */
-(void)setStockId:(OFString*) stockId;

/**
 * -(void*)setUseUnderline:(BOOL) useUnderline;
 *
 * @param useUnderline
 */
-(void)setUseUnderline:(BOOL) useUnderline;

@end
