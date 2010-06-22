package RT::Condition::DepartmentChange;
use base qw(RT::Condition);

sub IsApplicable {
    my $self = shift;
    my $T = $self->TransactionObj;
    my $Department = RT::CustomField->new($RT::SystemUser);
    my ($ok, $msg) = $Department->Load('Department');
    unless ($ok) {
        $RT::Logger->error("Failed to load Department CF: $msg");
        return 0;
    }

    if (  $T->Type eq 'Create' || 
        ( $T->Type eq 'CustomField' && $T->Field == $Department->Id ) ) {
        return 1;
    } 

    return 0;
}

1;
