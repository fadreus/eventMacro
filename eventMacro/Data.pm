package eventMacro::Data;

use strict;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw($eventMacro @perl_name $general_variable_qr $variable_qr $accessed_array_variable_qr $macro_keywords_character %parameters $macroKeywords CHECKING_AUTOMACROS PAUSED_BY_EXCLUSIVE_MACRO PAUSE_FORCED_BY_USER CHECKING_FORCED_BY_USER STATE_TYPE EVENT_TYPE);

our $eventMacro;
our @perl_name;

our $general_variable_qr = qr/(?:\$|@)\.?[a-zA-Z][a-zA-Z\d]*(?:\[\d+\])?/;
our $variable_qr = qr/\.?[a-zA-Z][a-zA-Z\d]*/;
our $accessed_array_variable_qr = qr/\.?[a-zA-Z][a-zA-Z\d]*\[\d+\]/;
our $macro_keywords_character = '&';

use constant {
	CHECKING_AUTOMACROS => 0,
	PAUSED_BY_EXCLUSIVE_MACRO => 1,
	PAUSE_FORCED_BY_USER => 2,
	CHECKING_FORCED_BY_USER => 3
};

use constant {
	STATE_TYPE => 1,
	EVENT_TYPE => 2
};

our %parameters = (
	'timeout' => 1,      # setting: re-check timeout
	'delay' => 1,        # option: delay before the macro starts
	'run-once' => 1,     # option: run automacro only once
	'disabled' => 1,     # option: automacro disabled
	'call' => 1,         # setting: macro to be called
	'overrideAI' => 1,   # option: override AI
	'orphan' => 1,       # option: orphan handling
	'macro_delay' => 1,  # option: default macro delay
	'priority' => 1,     # option: automacro priority
	'exclusive' => 1,    # option: is macro interruptible
	'repeat' => 1,       # option: the number of times the called macro will repeat itself
	'CheckOnAI' => 1,    # option: on which AI state the automacro will be checked
);

our $macroKeywords =
	"npc"          . "|" .
	"store"        . "|" .
	"player"       . "|" .
	"monster"      . "|" .
	"venderitem"   . "|" .
	"venderprice"  . "|" .
	"venderamount" . "|" .
	"random"       . "|" .
	"rand"         . "|" .
	"invamount"    . "|" .
	"cartamount"   . "|" .
	"shopamount"   . "|" .
	"storamount"   . "|" .
	"[Ii]nventory" . "|" .
	"[Ss]torage"   . "|" .
	"[Cc]art"      . "|" .
	"vender"       . "|" .
	"config"       . "|" .
	"eval"         . "|" .
	"arg"          . "|" .
	"listitem"     . "|" .
   	"nick"         . "|" .
	"push"           . "|" .
	"pop"            . "|" .
	"unshift"        . "|" .
	"shift"
;

1;
