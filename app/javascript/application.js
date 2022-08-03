// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import 'bootstrap'
//= require jquery3
//= require jquery_ujs

    $(document).on('click', '.add-fields', function(event){
        var content = $('.property-fields > div').slice(-2);
        var id_for_name = content.first().children('input').attr('id');
        var id_for_brand = content.last().children('input').attr('id');
        
    
        var name_for_name = content.first().children('input').attr('name');
        var name_for_brand = content.last().children('input').attr('name');

        var new_id_for_brand = id_for_brand.replace( /(\d+)/, function(){return arguments[1]*1+1} );
        var new_id_for_name = id_for_name.replace( /(\d+)/, function(){return arguments[1]*1+1} );
       

        var new_name_for_brand = name_for_brand.replace( /(\d+)/, function(){return arguments[1]*1+1} );
        var new_name_for_name = name_for_name.replace( /(\d+)/, function(){return arguments[1]*1+1} );
       

        var new_content = $('.property-fields').html();
        var new_content = new_content.replace(id_for_brand, new_id_for_brand).replace(id_for_name, new_id_for_name);
        var new_content = new_content.replace(name_for_brand, new_name_for_brand).replace(name_for_name, new_name_for_name);
        $('.property-fields').append(new_content);
        event.preventDefault();    
    });
