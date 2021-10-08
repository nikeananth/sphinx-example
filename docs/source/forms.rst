Add a Book to the Database
--------------------------

.. http:post:: /libapi/book
   :noindex:
   
     Add a book written by a specified author.
	 
   :form string: author (*required*) -- The name the of the author of the book
   :form string: title (*required*) -- Title of the book
   :form string: publisher (*optional*) -- Publisher of the book 
   :form string: latest_publication_date (*optional*) -- Most recent publication date
   :form string: language (*optional*) -- Language used in the writing of the book 
   :form string: isbn10 (*required*) -- ISBN 10 number of the book
   :form string: isbn13 (*optional*) -- ISBN 13 number of the book
   
   :requestheader Authorization: `token`

**Example Request**

.. sourcecode:: bash
  
   curl -s -H "Authorization: e52858e3-529a-40da-99d2-3bffd80a7a9b" curl -X GET https://fictionallibrary.com/libapi/book -d '{"author":"Crichton, Michael", "title":"Timeline", "publisher":"Ballantine Books;", latest_publication_date":"November 4, 2003", "language":"en", "isbn10":"034553901X"}' 

**Example Response**

.. sourcecode:: json

   {
       "result": "Timeline by Michael Crichton was added to the database"
   }