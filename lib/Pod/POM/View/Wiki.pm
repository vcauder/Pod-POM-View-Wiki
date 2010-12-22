package Pod::POM::View::Wiki;

use warnings;
use strict;

use base qw( Pod::POM::View::Text );

=head1 NAME

Pod::POM::View::Wiki - Wiki view for Pod::POM module

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

For now, it is a very alpha version to initiate the project

This view allow to use Pod::POM script with wiki view like this :

pom2 wiki path_to_my_file.pod > path_to_my_file.wiki

=head1 SUBROUTINES/METHODS

=head2 view_head1

overwrite view_head1 form Wiki

=cut
sub view_head1 {
  my ($self, $node) = @_;
  return "====== ".$node->title->present($self)." ======\n\n" . $node->content->present($self);
}

=head2 view_head2

overwrite view_head2 form Wiki

=cut
sub view_head2 {
  my ($self, $node) = @_;
  return "===== ".$node->title->present($self)." =====\n\n" . $node->content->present($self);
}

=head2 view_head3

overwrite view_head3 form Wiki

=cut
sub view_head3 {
  my ($self, $node) = @_;
  return "==== ".$node->title->present($self)." ====\n\n" . $node->content->present($self);
}

=head2 view_head4

overwrite view_head4 form Wiki

=cut
sub view_head4 {
  my ($self, $node) = @_;
  return "=== ".$node->title->present($self)." ===\n\n" . $node->content->present($self);
}


#TODO : Private method



=head1 AUTHOR

Nicolas Oudard, C<< <nicolas at oudard.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-pod-pom-view-wiki at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Pod-POM-View-Wiki>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Pod::POM::View::Wiki


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Pod-POM-View-Wiki>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Pod-POM-View-Wiki>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Pod-POM-View-Wiki>

=item * Search CPAN

L<http://search.cpan.org/dist/Pod-POM-View-Wiki/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2010 Nicolas Oudard.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Pod::POM::View::Wiki