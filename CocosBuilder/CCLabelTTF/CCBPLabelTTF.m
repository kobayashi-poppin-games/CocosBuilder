/*
 * CocosBuilder: http://www.cocosbuilder.com
 *
 * Copyright (c) 2012 Zynga Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#import "CCBPLabelTTF.h"

@implementation CCBPLabelTTF

-(ccColor3B)fillColor
{
    return _textFillColor;
}

-(void) setFillColor:(ccColor3B)fillColor
{
    [self setFontFillColor:fillColor updateImage:YES];
}

- (void) setShadowOpacity:(GLubyte)shadowOpacity
{
    if(shadowOpacity == 0){
        [self disableShadowAndUpdateImage:YES];
    }else{
        [self enableShadowWithOffset:_shadowOffset
                             opacity: shadowOpacity/255.f
                                blur:_shadowBlur
                         updateImage:YES];
    }
}

-(GLubyte)shadowOpacity
{
    return 255*_shadowOpacity;
}

-(void)setShadowOffset:(CGSize)shadowOffset
{
    if(_shadowOpacity!=0){
        [self enableShadowWithOffset:shadowOffset
                             opacity:_shadowOpacity
                                blur:_shadowBlur
                         updateImage:YES];
    }
}

-(CGSize)shadowOffset
{
    return _shadowOffset;
}

- (void) setAlignment:(int)alignment
{
    self.horizontalAlignment = alignment;
}

- (int) alignment
{
    return self.horizontalAlignment;
}

@end
