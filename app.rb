require "rubygems"
require "sinatra"

get "/" do
"
<html>
	<body>
    <header id='main_header'>
      <h1>Hanh learning to code</h1>
      <div id='banner'>
        <img src='http://placehold.it/640x100'>
      </div>
    </header>

    <hr>
    <section>
    <article>
    <h1>Create New Post</h1>
            <form action='/new-post'>
              <p><input type='text' name='title' value='Insert your title here' /></p>
              <p><textarea name='body'>Insert your blog content here</textarea></p>
              <p><input type='submit' value='Submit' /></p>
            </form>
    </article>
    <hr>
    
    <section>
      <footer>
        <p>Standard footer stuff</p>
        <nav class='footer'>
          <ul>
            <li>About</li>
            <li>Blog</li>
            <li>Ask me a question!</li>
          </ul> 
        </nav>
      </footer>
    </section>
  </body>	

  <style>
    article {
    background: #FFFFCC ;
    border-style: solid;
    border-width: 2px;
    margin: 5px 10px 10px 10px;
    padding: 15px 15px 20px 20px
    }

    article {
      border-style: solid;
      padding: 10px 10px 10px 10px;
      overflow: hidden; 
    }

    aside {
      float: left
    }

    #main_header {text-align: center;}

    #banner {
      position: relative;
      bottom: 10px;
      z-index: -1; 
    }

    .post {
      float: left;
    }

    h1 {
      font-family: Rockwell;
      font-style: italic;
      color: orange;
    }

    p {
      font-family: Garamond, sans-serif;
      text-align: justify;
    }

    aside{
      font-family: Garamond, sans-serif;
    }

    img {
        border-radius: 10px;
    }

    article img {
      padding: 0 30px 10px 0;
    }

    .footer {
      font: 16px Garamond;
      margin-bottom: 20px;
    }

  </style>		   
</html>
	"
end		
  
get "/new-post" do
"
<html>
  <body>
      <header id='main_header'>
        <h1>Hanh learning to code</h1>
        <div id='banner'>
          <img src='http://placehold.it/640x100'>
        </div>
      </header>

      <hr>
      
      <section>
        <article>
            <h1>#{ params[:title] }</a></h1>
            <p>#{ params[:body] }</p>
            <p>Posted on #{Time.now.strftime('%d/%m/%y %Hh%m') }</p>
            <p>Character Count: #{ params[:body].length }</p>  
        </article>  
      </section>

      <hr>

      <section>
        <footer>
          <p>Standard footer stuff</p>
          <nav class='footer'>
            <ul>
              <li>About</li>
              <li>Blog</li>
              <li>Ask me a question!</li>
            </ul> 
          </nav>
        </footer>
      </section>
  
  </body> 

  <style>
    article {
      background: #FFFFCC ;
      border-style: solid;
      border-width: 2px;
      margin: 5px 10px 10px 10px;
      padding: 15px 15px 20px 20px
    }

    article {
      border-style: solid;
      padding: 10px 10px 10px 10px;
      overflow: hidden; 
    }

    aside {
      float: left
    }

    #main_header {text-align: center;}

    #banner {
      position: relative;
      bottom: 10px;
      z-index: -1; 
    }

    .post {
      float: left;
    }

    h1 {
      font-family: Rockwell;
      font-style: italic;
      color: orange;
    }

    p {
      font-family: Garamond, sans-serif;
      text-align: justify;
    }

    aside{
      font-family: Garamond, sans-serif;
    }

    img {
        border-radius: 10px;
    }

    article img {
      padding: 0 30px 10px 0;
    }

    .footer {
      font: 16px Garamond;
      margin-bottom: 20px;
    }

  </style> 
  
</html>
"
end

