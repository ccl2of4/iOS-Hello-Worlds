//
//  PersonTableViewCell.m
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "PersonTableViewCell.h"

@interface PersonTableViewCell ()

@property (nonatomic) UILabel *nameLabel;
@property (nonatomic) UILabel *phraseLabel;

@end

@implementation PersonTableViewCell

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    [self setUpNameLabel];
    [self setUpPhraseLabel];
}

- (void)setUpNameLabel
{
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.nameLabel];
}

- (void)setUpPhraseLabel
{
    self.phraseLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.phraseLabel];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGRect bounds = self.bounds;
    CGFloat division = CGRectGetMidY(bounds);
    
    CGRect nameLabelFrame;
    CGRect phraseLabelFrame;

    CGRectDivide(bounds, &nameLabelFrame, &phraseLabelFrame, division, CGRectMinYEdge);
    
    [self.nameLabel setFrame:nameLabelFrame];
    [self.phraseLabel setFrame:phraseLabelFrame];
}

- (NSString *)name
{
    return self.nameLabel.text;
}

- (void)setName:(NSString *)name
{
    self.nameLabel.text = name;
}

- (NSString *)phrase
{
    return self.phraseLabel.text;
}

- (void)setPhrase:(NSString *)phrase
{
    self.phraseLabel.text = phrase;
}

@end
