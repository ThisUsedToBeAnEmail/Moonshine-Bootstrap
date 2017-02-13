use Moonshine::Test qw/:all/;

use Moonshine::Bootstrap::Component::NavbarCollapse;
use Moonshine::Bootstrap::v3::NavbarCollapse;

moon_test(
    name => 'navbar_collapse',
    build => {
        class => 'Moonshine::Bootstrap::Component::NavbarCollapse',        
    },
    instructions => [
        {
            test => 'obj',
            func => 'navbar_collapse',
            args   => {
                id   => 'bs-example-navbar-collapse-1',
                navs => [
                    {
                        nav_type => 'nav',
                        items    => [
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
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><ul class="nav navbar-nav"><li class="active" role="presentation"><a href="#">Home</a></li><li role="presentation"><a href="#">Profile</a></li><li role="presentation"><a href="#">Messages</a></li></ul></div>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'navbar_collapse',
            args   => {
                id   => 'bs-example-navbar-collapse-1',
                navs => [
                    {
                        nav_type => 'nav',
                        items    => [
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
                    {
                        alignment => 'left',
                        nav_type  => 'form',
                        role      => 'search',
                        fields    => [
                            {
                                field_type => 'field_group',
                                fields     => [
                                    {
                                        field_type  => 'text',
                                        placeholder => 'Search'
                                    },
                                ],
                            },
                            {
                                field_type => 'submit_button',
                            }
                        ],
                    },
                    {
                        nav_type  => 'nav',
                        alignment => 'right',
                        items     => [
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
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => 
'<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><ul class="nav navbar-nav"><li class="active" role="presentation"><a href="#">Home</a></li><li role="presentation"><a href="#">Profile</a></li><li role="presentation"><a href="#">Messages</a></li></ul><form class="navbar-form navbar-left" role="search"><div class="form-group"><input class="form-control" placeholder="Search" type="text"></input></div><button class="btn btn-default" type="submit">Submit</button></form><ul class="nav navbar-nav navbar-right"><li class="active" role="presentation"><a href="#">Home</a></li><li role="presentation"><a href="#">Profile</a></li><li role="presentation"><a href="#">Messages</a></li></ul></div>',
                }
            ],
        }
    ],
);

moon_test(
    name => 'navbar_collapse',
    build => {
        class => 'Moonshine::Bootstrap::v3::NavbarCollapse',        
    },
    instructions => [
        {
            test => 'obj',
            func => 'navbar_collapse',
            args   => {
                id   => 'bs-example-navbar-collapse-1',
                navs => [
                    {
                        nav_type => 'nav',
                        items    => [
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
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => '<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><ul class="nav navbar-nav"><li class="active" role="presentation"><a href="#">Home</a></li><li role="presentation"><a href="#">Profile</a></li><li role="presentation"><a href="#">Messages</a></li></ul></div>',
                }
            ],
        },
        {
            test => 'obj',
            func => 'navbar_collapse',
            args   => {
                id   => 'bs-example-navbar-collapse-1',
                navs => [
                    {
                        nav_type => 'nav',
                        items    => [
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
                    {
                        alignment => 'left',
                        nav_type  => 'form',
                        role      => 'search',
                        fields    => [
                            {
                                field_type => 'field_group',
                                fields     => [
                                    {
                                        field_type  => 'text',
                                        placeholder => 'Search'
                                    },
                                ],
                            },
                            {
                                field_type => 'submit_button',
                            }
                        ],
                    },
                    {
                        nav_type  => 'nav',
                        alignment => 'right',
                        items     => [
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
                ],
            },
            expected => 'Moonshine::Element',
            subtest => [
                {
                    test => 'render',
                    expected => 
'<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><ul class="nav navbar-nav"><li class="active" role="presentation"><a href="#">Home</a></li><li role="presentation"><a href="#">Profile</a></li><li role="presentation"><a href="#">Messages</a></li></ul><form class="navbar-form navbar-left" role="search"><div class="form-group"><input class="form-control" placeholder="Search" type="text"></input></div><button class="btn btn-default" type="submit">Submit</button></form><ul class="nav navbar-nav navbar-right"><li class="active" role="presentation"><a href="#">Home</a></li><li role="presentation"><a href="#">Profile</a></li><li role="presentation"><a href="#">Messages</a></li></ul></div>',
                }
            ],
        }
    ],
);

sunrise();
