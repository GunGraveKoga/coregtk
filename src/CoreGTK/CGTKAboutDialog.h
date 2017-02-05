/*
 * CGTKAboutDialog.h
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
#import "CoreGTK/CGTKDialog.h"

@interface CGTKAboutDialog : CGTKDialog
{

}


/**
 * Constructors
 */
- (id)init;

/**
 * Methods
 */

- (GtkAboutDialog *)ABOUTDIALOG;

/**
 * -(void*)addCreditSectionWithSectionName:(OFString*) sectionName andPeople:(gchar**) people;
 *
 * @param sectionName
 * @param people
 */
- (void)addCreditSectionWithSectionName:(OFString *)sectionName andPeople:(const gchar **)people;

/**
 * -(gchar***)getArtists;
 *
 * @returns gchar**
 */
- (const gchar * const *)getArtists;

/**
 * -(gchar***)getAuthors;
 *
 * @returns gchar**
 */
- (const gchar * const *)getAuthors;

/**
 * -(OFString**)getComments;
 *
 * @returns OFString*
 */
- (OFString *)getComments;

/**
 * -(OFString**)getCopyright;
 *
 * @returns OFString*
 */
- (OFString *)getCopyright;

/**
 * -(gchar***)getDocumenters;
 *
 * @returns gchar**
 */
- (const gchar * const *)getDocumenters;

/**
 * -(OFString**)getLicense;
 *
 * @returns OFString*
 */
- (OFString *)getLicense;

/**
 * -(GtkLicense*)getLicenseType;
 *
 * @returns GtkLicense
 */
- (GtkLicense)getLicenseType;

/**
 * -(GdkPixbuf**)getLogo;
 *
 * @returns GdkPixbuf*
 */
- (GdkPixbuf *)getLogo;

/**
 * -(OFString**)getLogoIconName;
 *
 * @returns OFString*
 */
- (OFString *)getLogoIconName;

/**
 * -(OFString**)getProgramName;
 *
 * @returns OFString*
 */
- (OFString *)getProgramName;

/**
 * -(OFString**)getTranslatorCredits;
 *
 * @returns OFString*
 */
- (OFString *)getTranslatorCredits;

/**
 * -(OFString**)getVersion;
 *
 * @returns OFString*
 */
- (OFString *)getVersion;

/**
 * -(OFString**)getWebsite;
 *
 * @returns OFString*
 */
- (OFString *)getWebsite;

/**
 * -(OFString**)getWebsiteLabel;
 *
 * @returns OFString*
 */
- (OFString *)getWebsiteLabel;

/**
 * -(BOOL*)getWrapLicense;
 *
 * @returns BOOL
 */
- (BOOL)getWrapLicense;

/**
 * -(void*)setArtists:(gchar**) artists;
 *
 * @param artists
 */
- (void)setArtists:(const gchar **)artists;

/**
 * -(void*)setAuthors:(gchar**) authors;
 *
 * @param authors
 */
- (void)setAuthors:(const gchar **)authors;

/**
 * -(void*)setComments:(OFString*) comments;
 *
 * @param comments
 */
- (void)setComments:(OFString *)comments;

/**
 * -(void*)setCopyright:(OFString*) copyright;
 *
 * @param copyright
 */
- (void)setCopyright:(OFString *)copyright;

/**
 * -(void*)setDocumenters:(gchar**) documenters;
 *
 * @param documenters
 */
- (void)setDocumenters:(const gchar **)documenters;

/**
 * -(void*)setLicense:(OFString*) license;
 *
 * @param license
 */
- (void)setLicense:(OFString *)license;

/**
 * -(void*)setLicenseType:(GtkLicense) licenseType;
 *
 * @param licenseType
 */
- (void)setLicenseType:(GtkLicense)licenseType;

/**
 * -(void*)setLogo:(GdkPixbuf*) logo;
 *
 * @param logo
 */
- (void)setLogo:(GdkPixbuf *)logo;

/**
 * -(void*)setLogoIconName:(OFString*) iconName;
 *
 * @param iconName
 */
- (void)setLogoIconName:(OFString *)iconName;

/**
 * -(void*)setProgramName:(OFString*) name;
 *
 * @param name
 */
- (void)setProgramName:(OFString *)name;

/**
 * -(void*)setTranslatorCredits:(OFString*) translatorCredits;
 *
 * @param translatorCredits
 */
- (void)setTranslatorCredits:(OFString *)translatorCredits;

/**
 * -(void*)setVersion:(OFString*) version;
 *
 * @param version
 */
- (void)setVersion:(OFString *)version;

/**
 * -(void*)setWebsite:(OFString*) website;
 *
 * @param website
 */
- (void)setWebsite:(OFString *)website;

/**
 * -(void*)setWebsiteLabel:(OFString*) websiteLabel;
 *
 * @param websiteLabel
 */
- (void)setWebsiteLabel:(OFString *)websiteLabel;

/**
 * -(void*)setWrapLicense:(BOOL) wrapLicense;
 *
 * @param wrapLicense
 */
- (void)setWrapLicense:(BOOL)wrapLicense;

@end
