/*
 * CGTKBuilder.h
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
#import "CoreGTK/CGTKBase.h"

@interface CGTKBuilder : CGTKBase
{

}


/**
 * Constructors
 */
-(id)init;
-(id)initFromFile:(OFString*) filename;
-(id)initFromResource:(OFString*) resourcePath;
-(id)initFromStringWithString:(OFString*) string andLength:(gssize) length;

/**
 * Methods
 */

-(GtkBuilder*)BUILDER;

/**
 * -(void*)addCallbackSymbolWithCallbackName:(OFString*) callbackName andCallbackSymbol:(GCallback) callbackSymbol;
 *
 * @param callbackName
 * @param callbackSymbol
 */
-(void)addCallbackSymbolWithCallbackName:(OFString*) callbackName andCallbackSymbol:(GCallback) callbackSymbol;

/**
 * -(guint*)addFromFileWithFilename:(OFString*) filename andErr:(GError**) err;
 *
 * @param filename
 * @param err
 * @returns guint
 */
-(guint)addFromFileWithFilename:(OFString*) filename andErr:(GError**) err;

/**
 * -(guint*)addFromResourceWithResourcePath:(OFString*) resourcePath andErr:(GError**) err;
 *
 * @param resourcePath
 * @param err
 * @returns guint
 */
-(guint)addFromResourceWithResourcePath:(OFString*) resourcePath andErr:(GError**) err;

/**
 * -(guint*)addFromStringWithBuffer:(OFString*) buffer andLength:(gsize) length andErr:(GError**) err;
 *
 * @param buffer
 * @param length
 * @param err
 * @returns guint
 */
-(guint)addFromStringWithBuffer:(OFString*) buffer andLength:(gsize) length andErr:(GError**) err;

/**
 * -(guint*)addObjectsFromFileWithFilename:(OFString*) filename andObjectIds:(gchar**) objectIds andErr:(GError**) err;
 *
 * @param filename
 * @param objectIds
 * @param err
 * @returns guint
 */
-(guint)addObjectsFromFileWithFilename:(OFString*) filename andObjectIds:(gchar**) objectIds andErr:(GError**) err;

/**
 * -(guint*)addObjectsFromResourceWithResourcePath:(OFString*) resourcePath andObjectIds:(gchar**) objectIds andErr:(GError**) err;
 *
 * @param resourcePath
 * @param objectIds
 * @param err
 * @returns guint
 */
-(guint)addObjectsFromResourceWithResourcePath:(OFString*) resourcePath andObjectIds:(gchar**) objectIds andErr:(GError**) err;

/**
 * -(guint*)addObjectsFromStringWithBuffer:(OFString*) buffer andLength:(gsize) length andObjectIds:(gchar**) objectIds andErr:(GError**) err;
 *
 * @param buffer
 * @param length
 * @param objectIds
 * @param err
 * @returns guint
 */
-(guint)addObjectsFromStringWithBuffer:(OFString*) buffer andLength:(gsize) length andObjectIds:(gchar**) objectIds andErr:(GError**) err;

/**
 * -(void*)connectSignals:(gpointer) userData;
 *
 * @param userData
 */
-(void)connectSignals:(gpointer) userData;

/**
 * -(void*)connectSignalsFullWithFunc:(GtkBuilderConnectFunc) func andUserData:(gpointer) userData;
 *
 * @param func
 * @param userData
 */
-(void)connectSignalsFullWithFunc:(GtkBuilderConnectFunc) func andUserData:(gpointer) userData;

/**
 * -(void*)exposeObjectWithName:(OFString*) name andObject:(GObject*) object;
 *
 * @param name
 * @param object
 */
-(void)exposeObjectWithName:(OFString*) name andObject:(GObject*) object;

/**
 * -(GtkApplication**)getApplication;
 *
 * @returns GtkApplication*
 */
-(GtkApplication*)getApplication;

/**
 * -(GObject**)getObject:(OFString*) name;
 *
 * @param name
 * @returns GObject*
 */
-(GObject*)getObject:(OFString*) name;

/**
 * -(GSList**)getObjects;
 *
 * @returns GSList*
 */
-(GSList*)getObjects;

/**
 * -(OFString**)getTranslationDomain;
 *
 * @returns OFString*
 */
-(OFString*)getTranslationDomain;

/**
 * -(GType*)getTypeFromName:(const char*) typeName;
 *
 * @param typeName
 * @returns GType
 */
-(GType)getTypeFromName:(const char*) typeName;

/**
 * -(GCallback*)lookupCallbackSymbol:(OFString*) callbackName;
 *
 * @param callbackName
 * @returns GCallback
 */
-(GCallback)lookupCallbackSymbol:(OFString*) callbackName;

/**
 * -(void*)setApplication:(GtkApplication*) application;
 *
 * @param application
 */
-(void)setApplication:(GtkApplication*) application;

/**
 * -(void*)setTranslationDomain:(OFString*) domain;
 *
 * @param domain
 */
-(void)setTranslationDomain:(OFString*) domain;

/**
 * -(BOOL*)valueFromStringWithPspec:(GParamSpec*) pspec andString:(OFString*) string andValue:(GValue*) value andErr:(GError**) err;
 *
 * @param pspec
 * @param string
 * @param value
 * @param err
 * @returns BOOL
 */
-(BOOL)valueFromStringWithPspec:(GParamSpec*) pspec andString:(OFString*) string andValue:(GValue*) value andErr:(GError**) err;

/**
 * -(BOOL*)valueFromStringTypeWithType:(GType) type andString:(OFString*) string andValue:(GValue*) value andErr:(GError**) err;
 *
 * @param type
 * @param string
 * @param value
 * @param err
 * @returns BOOL
 */
-(BOOL)valueFromStringTypeWithType:(GType) type andString:(OFString*) string andValue:(GValue*) value andErr:(GError**) err;

@end
