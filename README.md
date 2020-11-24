html2pdf
========

This Docker image packages up [wkhtmltopdf][1], with all of its
dependencies, to make it easier to snapshot websites as PDFs.

Running The Image
-----------------

To snapshot a URL, pass it to the image and let the entrypoint do
the rest:

    docker run --rm iamjameshunt/html2pdf https://jameshunt.us/ foo.pdf

The second argument is an output file; you'll need to map in a
working directory bind mount if you want to keep that PDF when the
container is deleted (which I assume you do):

    docker run --rm -v $PWD:/out \
      iamjameshunt/html2pdf \
      https://jameshunt.us/ \
      /out/foo.pdf

Since we mapped our current working directory ($PWD) to /out
(inside the container), writing to /out/foo.pdf has the ultimate
end result of saving our PDF file to `.`.  Pretty neat, eh?

[1]: https://wkhtmltopdf.org/
