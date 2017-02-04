package Moonshine::Bootstrap::v3::Glyphicon;

use Moonshine::Magic;

extends 'Moonshine::Bootrap::Component::Glyphicon';

has (
    glyphicon_spec => sub { 
      	{
            switch      => 1,
			switch_base => { default => 'glyphicon glyphicon-' },
			aria_hidden => { default => 'true' },
		};
    }
);

1;


