# /function glowborder:say {target:"Name",msg:"text"}  -> broadcasts as fake chat
$tellraw @a {"text":"<$(target)> $(msg)"}
