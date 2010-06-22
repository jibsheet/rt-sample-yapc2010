package RT::Action::DefaultCustomFields;
use base qw(RT::Action);

sub Prepare { 1 };

sub Commit {
    my $self = shift;
    my $T = $self->TicketObj;
    $T->AddCustomFieldValue(Field => 'Billable', Value => 'no') 
        unless $T->CheckSomething;
};

1;
