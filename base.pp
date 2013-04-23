include epel

account { 'compass':
  home_dir => "/home/compass",
  shell => "/bin/bash",
  groups => ['compass', 'wheel'],
  ssh_key => "AAAAB3NzaC1yc2EAAAABIwAAAQEAuGXfOtnIqgJhKK1zXi18U10mlwnkILfqXdG+l7sculwJd4ZApO6nd1xBcJtpaLpQ5ovogItsQ8ExGPxehzVTXxTyeZMNlrrk7KWsMpyBjvay2C69W+E3TI35X8dLjksXCs1YSdoyzo1dfAXQ1k9/tQ0CzzeNXaohz/47UVYbJVitW+1QA6D27+mDPEOKWwhR4zfwdsNRRgZA6eO4iEiRwxgIH3KE8xw+UcbdvS13HJRwKQesIeN1TdJyPJLwonX44GSS0KbRboyNcr+e9pxDZJjBC07gqZb3GtdsQ9ocV0dWxSwopeMZyIjteyTw90BJM1DHlaMlFAbmrG1vigtJVw==",
}

package { git: 
  ensure => present
}
