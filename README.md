# Plees VPRO

The only image placeholder service on the web bringing you nothing but VPRO jpgs.

## Examples

### Basic, standard, everyday use

```html
http://plees-vpro.herokuapp.com/400/200
```
This URL will return a 400-pixel-wide by 200-pixel-tall picture of a VPRO character. The first parameter represents the *width*, the second parameter is the *height*.

```html
http://plees-vpro.herokuapp.com/400/200/r
```
Will return a 400x200-pixel random image

### Square

```html
http://plees-vpro.herokuapp.com/350
```
This URL returns a square VPRO image with width and height of 350 pixels. The sole parameter represents the *width* and *height* of the square image. 

```html
http://plees-vpro.herokuapp.com/350/r
```
Will return a 350x350-pixel random image

## install prerequisites

`brew update`

`brew install imagemagick` to be able to install rmagick


Install at least Ruby#v2.2.4 through [RVM](https://rvm.io/).

Install [bundler](http://bundler.io/) through 

`gem install bundler`

Then do `bundle install`

## running the server locally
After installing all prerequisites do:

`rails server` from the root of the project and visit [localhost:3000](http://localhost:3000). Jeejj!

## License

The MIT License (MIT)
Copyright (c) 2015 Tim Boisvert; 2016 VPRO Digitaal

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
