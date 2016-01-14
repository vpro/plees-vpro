# Plees VPRO

The only image placeholder service on the web bringing you nothing but VPRO jpgs.

## Examples

### Basic, standard, everyday use

```html
http://plees-vpro.herokuapp.com/400/200
```
This URL will return a 400-pixel-wide by 200-pixel-tall picture of a VPRO character. The first parameter represents the *width*, the second parameter is the *height*.

### Square

```html
http://plees-vpro.herokuapp.com/350
```
This URL returns a square VPRO image with width and height of 350 pixels. The sole parameter represents the *width* and *height* of the square image. 

## install prerequisites

`brew update`

`brew install imagemagick` to be able to install rmagick

## License

The MIT License (MIT)
Copyright (c) 2015 Tim Boisvert; 2016 VPRO Digitaal

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
