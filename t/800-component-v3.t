use Moonshine::Test qw/:all/;
use strict;
use warnings;
use Moonshine::Bootstrap::v3;

moon_test(
    name => 'Bootstrap - components - v3',
    build => {
        class => 'Moonshine::Bootstrap::v3',        
    },
    instructions => [
         {
            test => 'obj',
            func => 'embed_responsive',
            args => {
                children => [
                    {
                        action => 'embed_responsive_iframe',
                        src => 'http://lnation.org',
                    },
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="embed-responsive"><iframe class="embed-responsive-item" src="http://lnation.org"></iframe></div>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'embed_res',
            args => {
                iframe => {
                    src => 'http://lnation.org',
                },
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="embed-responsive"><iframe class="embed-responsive-item" src="http://lnation.org"></iframe></div>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'caret',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<span class="caret"></span>',
                }
            ],
        },
       {
            test => 'obj',
            func => 'dropdown_button',
            args   => {
                split => 1,
                id    => 'dropdownMenu1',
                data  => 'Dropdown',
            },
			expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<button class="btn btn-default" type="button">Dropdown</button><button class="dropdown-toggle btn btn-default" id="dropdownMenu1" type="button" aria-expanded="true" aria-haspopup="true" data-toggle="dropdown"><span class="caret"></span></button>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'separator_li',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li class="divider" role="separator"></li>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'dropdown_header_li',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li class="dropdown-header"></li>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'linked_li',
            args   => {
                link    => 'http://some.url',
                data    => 'URL',
                disable => 1,
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li class="disabled"><a href="http://some.url">URL</a></li>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'linked_li_span',
            args => {
                link => { href => 'http://some.url' },
                span => { data => 'Achoooo' },
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li><a href="http://some.url"><span>Achoooo</span></a></li>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'dropdown_ul',
            args => {
                separators      => [ 1, 3, 5 ],
                aria_labelledby => 'dropdownMenu1',
                children        => [
                    {
                        action => 'linked_li',
                        link => 'http://some.url',
                        data => 'URL',
                    },
                    {
                        action => 'linked_li',
                        link => 'http://second.url',
                        data => 'Second',
                    }
                ],           
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"><li class="divider" role="separator"></li><li><a href="http://some.url">URL</a></li><li class="divider" role="separator"></li><li><a href="http://second.url">Second</a></li><li class="divider" role="separator"></li></ul>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'dropdown',
            args => {
                mid    => 'dropdownMenu1',
                dropup => 1,
                ul     => {
                    separators => [ 1, 3, 5 ],
                    children   => [
                        {
                            action => 'linked_li',
                            link => 'http://some.url',
                            data => 'URL',
                        },
                        {
                            data   => 'Second',
                            action => 'dropdown_header_li',
                        }
                    ],
                },
                button => {
                    id   => 'dropdownMenu1',
                    data => 'Dropdown',
                },            
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="dropup"><button class="dropdown-toggle btn btn-default" id="dropdownMenu1" type="button" aria-expanded="true" aria-haspopup="true" data-toggle="dropdown">Dropdown<span class="caret"></span></button><ul class="dropdown-menu" aria-labelledby="dropdownMenu1"><li class="divider" role="separator"></li><li><a href="http://some.url">URL</a></li><li class="divider" role="separator"></li><li class="dropdown-header">Second</li><li class="divider" role="separator"></li></ul></div>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'button_group',
            args => {
                sizing => 'lg',
                group  => [
                    {
                        data => 'one',
                    },
                    {
                        data => 'two',
                    },
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="btn-group btn-group-lg" role="group"><button class="btn btn-default" type="button">one</button><button class="btn btn-default" type="button">two</button></div>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'button_toolbar',
            args   => {
                toolbar => [
                    {
                        group => [
                            {
                                data => 'one',
                            },
                        ],
                    },
                    {
                        group => [
                            {
                                data => 'two',
                            }
                        ],
                    },
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected =>'<div class="btn-toolbar" role="toolbar"><div class="btn-group" role="group"><button class="btn btn-default" type="button">one</button></div><div class="btn-group" role="group"><button class="btn btn-default" type="button">two</button></div></div>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'input',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<input class="form-control" type="text"></input>',
                }
            ],
        },
        {
            test     => 'obj',
            func     => 'input_group_addon',
            expected => 'Moonshine::Element',
            args     => {
                id       => 'basic-addon1',
                dropdown => {
                    mid => 'dropdownMenu1',
                    ul  => {
                        children => [
                            {
                                action => 'linked_li',
                                link   => 'http://some.url',
                                data   => 'URL',
                            },
                            {
                                action => 'linked_li',
                                link   => 'http://second.url',
                                data   => 'Second',
                            }
                        ],
                    },
                    button => {
                        id   => 'dropdownMenu1',
                        data => 'Dropdown',
                    },
                }
            },
            subtest => [
                {
                    test => 'render',
                    expected =>
'<div class="input-group-btn" id="basic-addon1"><button class="dropdown-toggle btn btn-default" id="dropdownMenu1" type="button" aria-expanded="true" aria-haspopup="true" data-toggle="dropdown">Dropdown<span class="caret"></span></button><ul class="dropdown-menu" aria-labelledby="dropdownMenu1"><li><a href="http://some.url">URL</a></li><li><a href="http://second.url">Second</a></li></ul></div>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'input_group',
            args => {
                mid   => 'basic-addon1',
                lid   => 'basic-username',
                label => {
                    data => 'Some text',
                },
                input => {
                    placeholder => 'Username',
                },
                left => {
                    data => q(@),
                },
                right => {
                    data => q(@),
                },

            },
            expected => 'Moonshine::Element',
            subtest  => [
                {
                    test => 'render',
                    expected =>
'<label for="basic-username">Some text</label><div class="input-group"><span class="input-group-addon" id="basic-addon1">@</span><input class="form-control" id="basic-username" placeholder="Username" type="text" aria-describedby="basic-addon1"></input><span class="input-group-addon" id="basic-addon1">@</span></div>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'nav_item',
            args   => {
                link => 'http://some.url',
                data => 'URL',
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<li role="presentation"><a href="http://some.url">URL</a></li>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'nav',
            args   => {
                switch    => 'pills',
                justified => 1,
                nav_items     => [
                    {
                        data   => 'Home',
                        active => 1,
                    },
                    {
                        data    => 'Profile',
                        disable => 1,
                    },
                    {
                        data     => 'Messages',
                        dropdown => {
                            children => [
                                {
                                    action => 'linked_li',
                                    link => 'http://some.url',
                                    data => 'URL',
                                },
                                {
                                    action => 'linked_li',
                                    link => 'http://second.url',
                                    data => 'Second',
                                }
                            ],
                        },
                    }
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<ul class="nav nav-pills nav-justified"><li class="active" role="presentation"><a href="#">Home</a></li><li class="disabled" role="presentation"><a href="#">Profile</a></li><li role="presentation"><a class="dropdown-toggle" href="#" aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown">Messages</a><ul class="dropdown-menu"><li><a href="http://some.url">URL</a></li><li><a href="http://second.url">Second</a></li></ul></li></ul>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'navbar_brand',
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<a class="navbar-brand" href="#"></a>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'navbar_text',
            expected => 'Moonshine::Element',
            args => {
                data => 'Ping',
            },
            subtest => [
                {
                    test => 'render',
                    expected => '<p class="navbar-text">Ping</p>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'navbar_button',
            expected => 'Moonshine::Element',
            args => {
                data => 'Menu'
            },
            subtest => [
                {
                    test => 'render',
                    expected => '<button class="navbar-btn btn btn-default" type="button">Menu</button>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'navbar_toggle',
            expected => 'Moonshine::Element',
            args   => { data_target => 'bs-example-navbar-collapse-1' },
            subtest => [
                {
                    test => 'render',
                    expected => '<button class="navbar-toggle collapsed" type="button" aria-expanded="false" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'navbar_text_link',
            expected => 'Moonshine::Element',
            args   => { 
                data      => 'Navbar Text',
                alignment => 'left',
                link      => {
                    href => "some.url",
                    data => "More Text",
                }
            },
            subtest => [
                {
                    test => 'render',
                    expected => '<p class="navbar-text navbar-left">Navbar Text<a class="navbar-link" href="some.url">More Text</a></p>'
                }
            ],
        },
        {
            test => 'obj',
            func => 'navbar_nav',
            args   => {
                switch  => 'tabs',
                nav_items => [
                    {
                        data   => 'Home',
                        active => 1,
                    },
                    {
                        data => 'Profile',
                    },
                    {
                        data => 'Messages',
                    }
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<ul class="navbar-nav nav nav-tabs"><li class="active" role="presentation"><a href="#">Home</a></li><li role="presentation"><a href="#">Profile</a></li><li role="presentation"><a href="#">Messages</a></li></ul>',
                }
            ],
        },
    ],
);

sunrise();

1;
