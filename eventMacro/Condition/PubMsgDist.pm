package eventMacro::Condition::PubMsgDist;

use strict;
use Globals;
use Utils;

use eventMacro::Data;

use base 'eventMacro::Conditiontypes::BaseMsgDist';

sub _hooks {
	my ( $self ) = @_;
	my $hooks = $self->SUPER::_hooks;
	my @other_hooks = ('packet_pubMsg');
	push(@{$hooks}, @other_hooks);
	return $hooks;
}

sub validate_condition {
	my ( $self, $callback_type, $callback_name, $args ) = @_;
	
	if ($callback_type eq 'hook') {
		$self->{message} = $args->{Msg};
		$self->{source} = $args->{MsgUser};
		$self->{actorList} = $playersList;
	}
	
	return $self->SUPER::validate_condition( $callback_type, $callback_name, $args );
}

sub usable {
	1;
}

1;