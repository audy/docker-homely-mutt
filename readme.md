# The Homely Mutt (Dockerified)

Steve Losh's [The Homely Mutt](http://stevelosh.com/blog/2012/10/the-homely-mutt/) as a Dockerfile.

:warning: This code is untested! It is possible that offlineimap's two-way sync
will delete your email if I screwed something up. Use at your own risk!!
:warning: :warning: :construction: :bangbang: :skull:

## Usage

```bash
# sync with gmail
# (run once. takes a long time)
docker run \
  --volume $PWD/mail:/root/.mail \
  --entrypoint /usr/local/bin/offlineimap \
  --env GMAIL_PASSWORD='...' \
  mutt

# then, to actually use this
docker run \
  --volume $PWD/mail:/root/.mail \
  --env GMAIL_PASSWORD='...' \
  mutt
```

It is recommended to use [application-specific
passwords](https://support.google.com/accounts/answer/185833?hl=en) for Gmail.

## License

The MIT License (MIT)
Copyright (c) 2016 Austin Davis-Richardson 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
