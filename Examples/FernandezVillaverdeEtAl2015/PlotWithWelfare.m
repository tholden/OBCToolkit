[ welfare_ce, welfare_ce_ ] = GetWelfarePath( oo_.irfs.C_epsilon_beta + dynareOBC_.IRFOffsets.C_epsilon_beta, ...
                                              oo_.irfs.L_epsilon_beta + dynareOBC_.IRFOffsets.L_epsilon_beta, ...
                                              oo_.irfs.Ce_epsilon_beta + dynareOBC_.IRFOffsets.Ce_epsilon_beta, ...
                                              oo_.irfs.Le_epsilon_beta + dynareOBC_.IRFOffsets.Le_epsilon_beta, ...
                                              oo_.irfs.beta_epsilon_beta + dynareOBC_.IRFOffsets.beta_epsilon_beta, ...
                                              beta_STEADY, A_STEADY, Sg_STEADY, PI_STEADY, varepsilon, theta, vartheta, psi );
welfare_ce_WO               = GetWelfarePath( dynareOBC_.IRFsWithoutBounds.C_epsilon_beta + dynareOBC_.IRFOffsets.C_epsilon_beta, ...
                                              dynareOBC_.IRFsWithoutBounds.L_epsilon_beta + dynareOBC_.IRFOffsets.L_epsilon_beta, ...
                                              dynareOBC_.IRFsWithoutBounds.Ce_epsilon_beta + dynareOBC_.IRFOffsets.Ce_epsilon_beta, ...
                                              dynareOBC_.IRFsWithoutBounds.Le_epsilon_beta + dynareOBC_.IRFOffsets.Le_epsilon_beta, ...
                                              dynareOBC_.IRFsWithoutBounds.beta_epsilon_beta + dynareOBC_.IRFOffsets.beta_epsilon_beta, ...
                                              beta_STEADY, A_STEADY, Sg_STEADY, PI_STEADY, varepsilon, theta, vartheta, psi );

Times = 1 : length( welfare_ce );

subplot( 3, 2, 6 );

plot( Times, welfare_ce, '-k', 'linewidth', 1 );
hold on;
plot( Times, welfare_ce_ * ones( size( welfare_ce ) ), '-r', 'linewidth', 0.5 );
plot( Times, welfare_ce_WO, ':k', 'linewidth', 1 );
hold off;

PrepareWelfareFigure;
