module DocRaptor
  # 
  class PrinceOptions < BaseObject
    attr_accessor :baseurl, :no_xinclude, :no_network, :http_user, :http_password, :http_proxy, :http_timeout, :insecure, :media, :no_author_style, :no_default_style, :no_embed_fonts, :no_subset_fonts, :no_compress, :encrypt, :key_bits, :user_password, :owner_password, :disallow_print, :disallow_copy, :disallow_annotate, :disallow_modify, :input, :version, :javascript, :css_dpi, :profile
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # Set the baseurl for assets.
        :'baseurl' => :'baseurl',
        
        # Disable XML inclusion.
        :'no_xinclude' => :'no_xinclude',
        
        # Disable network access.
        :'no_network' => :'no_network',
        
        # Set the user for HTTP authentication.
        :'http_user' => :'http_user',
        
        # Set the password for HTTP authentication.
        :'http_password' => :'http_password',
        
        # Set the HTTP proxy server.
        :'http_proxy' => :'http_proxy',
        
        # Set the HTTP request timeout.
        :'http_timeout' => :'http_timeout',
        
        # Disable SSL verification.
        :'insecure' => :'insecure',
        
        # Specify the CSS media type. Defaults to \&quot;print\&quot; but you may want to use \&quot;screen\&quot; for web styles.
        :'media' => :'media',
        
        # Ignore author stylesheets.
        :'no_author_style' => :'no_author_style',
        
        # Ignore default stylesheets.
        :'no_default_style' => :'no_default_style',
        
        # Disable font embedding in PDFs.
        :'no_embed_fonts' => :'no_embed_fonts',
        
        # Disable font subsetting in PDFs.
        :'no_subset_fonts' => :'no_subset_fonts',
        
        # Disable PDF compression.
        :'no_compress' => :'no_compress',
        
        # Encrypt PDF output.
        :'encrypt' => :'encrypt',
        
        # Set encryption key size.
        :'key_bits' => :'key_bits',
        
        # Set the PDF user password.
        :'user_password' => :'user_password',
        
        # Set the PDF owner password.
        :'owner_password' => :'owner_password',
        
        # Disallow printing of this PDF.
        :'disallow_print' => :'disallow_print',
        
        # Disallow copying of this PDF.
        :'disallow_copy' => :'disallow_copy',
        
        # Disallow annotation of this PDF.
        :'disallow_annotate' => :'disallow_annotate',
        
        # Disallow modification of this PDF.
        :'disallow_modify' => :'disallow_modify',
        
        # Specify the input format.
        :'input' => :'input',
        
        # Specify a specific verison of PrinceXML to use.
        :'version' => :'version',
        
        # Enable PrinceXML JavaScript. DocRaptor JavaScript parsing is also available elsewhere.
        :'javascript' => :'javascript',
        
        # Set the DPI when rendering CSS. Defaults to 96 but can be set with Prince 9.0 and up.
        :'css_dpi' => :'css_dpi',
        
        # In Prince 9.0 and up you can set the PDF profile.
        :'profile' => :'profile'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'baseurl' => :'String',
        :'no_xinclude' => :'BOOLEAN',
        :'no_network' => :'BOOLEAN',
        :'http_user' => :'String',
        :'http_password' => :'String',
        :'http_proxy' => :'String',
        :'http_timeout' => :'Integer',
        :'insecure' => :'BOOLEAN',
        :'media' => :'String',
        :'no_author_style' => :'BOOLEAN',
        :'no_default_style' => :'BOOLEAN',
        :'no_embed_fonts' => :'BOOLEAN',
        :'no_subset_fonts' => :'BOOLEAN',
        :'no_compress' => :'BOOLEAN',
        :'encrypt' => :'BOOLEAN',
        :'key_bits' => :'Integer',
        :'user_password' => :'String',
        :'owner_password' => :'String',
        :'disallow_print' => :'BOOLEAN',
        :'disallow_copy' => :'BOOLEAN',
        :'disallow_annotate' => :'BOOLEAN',
        :'disallow_modify' => :'BOOLEAN',
        :'input' => :'String',
        :'version' => :'String',
        :'javascript' => :'BOOLEAN',
        :'css_dpi' => :'Integer',
        :'profile' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'baseurl']
        self.baseurl = attributes[:'baseurl']
      end
      
      if attributes[:'no_xinclude']
        self.no_xinclude = attributes[:'no_xinclude']
      end
      
      if attributes[:'no_network']
        self.no_network = attributes[:'no_network']
      end
      
      if attributes[:'http_user']
        self.http_user = attributes[:'http_user']
      end
      
      if attributes[:'http_password']
        self.http_password = attributes[:'http_password']
      end
      
      if attributes[:'http_proxy']
        self.http_proxy = attributes[:'http_proxy']
      end
      
      if attributes[:'http_timeout']
        self.http_timeout = attributes[:'http_timeout']
      end
      
      if attributes[:'insecure']
        self.insecure = attributes[:'insecure']
      end
      
      if attributes[:'media']
        self.media = attributes[:'media']
      end
      
      if attributes[:'no_author_style']
        self.no_author_style = attributes[:'no_author_style']
      end
      
      if attributes[:'no_default_style']
        self.no_default_style = attributes[:'no_default_style']
      end
      
      if attributes[:'no_embed_fonts']
        self.no_embed_fonts = attributes[:'no_embed_fonts']
      end
      
      if attributes[:'no_subset_fonts']
        self.no_subset_fonts = attributes[:'no_subset_fonts']
      end
      
      if attributes[:'no_compress']
        self.no_compress = attributes[:'no_compress']
      end
      
      if attributes[:'encrypt']
        self.encrypt = attributes[:'encrypt']
      end
      
      if attributes[:'key_bits']
        self.key_bits = attributes[:'key_bits']
      end
      
      if attributes[:'user_password']
        self.user_password = attributes[:'user_password']
      end
      
      if attributes[:'owner_password']
        self.owner_password = attributes[:'owner_password']
      end
      
      if attributes[:'disallow_print']
        self.disallow_print = attributes[:'disallow_print']
      end
      
      if attributes[:'disallow_copy']
        self.disallow_copy = attributes[:'disallow_copy']
      end
      
      if attributes[:'disallow_annotate']
        self.disallow_annotate = attributes[:'disallow_annotate']
      end
      
      if attributes[:'disallow_modify']
        self.disallow_modify = attributes[:'disallow_modify']
      end
      
      if attributes[:'input']
        self.input = attributes[:'input']
      end
      
      if attributes[:'version']
        self.version = attributes[:'version']
      end
      
      if attributes[:'javascript']
        self.javascript = attributes[:'javascript']
      end
      
      if attributes[:'css_dpi']
        self.css_dpi = attributes[:'css_dpi']
      end
      
      if attributes[:'profile']
        self.profile = attributes[:'profile']
      end
      
    end

    def input=(input)
      allowed_values = ["html", "xml", "auto"]
      if input && !allowed_values.include?(input)
        fail "invalid value for 'input', must be one of #{allowed_values}"
      end
      @input = input
    end

  end
end
