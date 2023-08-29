function g = powerAdjustment(g, epsilon)
    % POWERADJUSTMENT Adjusts power allocation based on user feedback error
    %
    % INPUT:
    %   g: Current power allocation vector
    %   epsilon: Error vector
    %
    % OUTPUT:
    %   g: Adjusted power allocation vector

    % Initialize epsilon_max
    epsilon_max = 1e-4;
    N = 3;

    % Calculate Delta epsilon
    Delta_epsilon = epsilon - epsilon_max;

    % Check if any Delta epsilon is greater than 0
    if any(Delta_epsilon > 0)
        maxE = max(Delta_epsilon);
        u = find(Delta_epsilon == maxE);

        if u == 1
            g(u + 1) = g(u + 1) - 1;
        elseif u == N
            minE = min(Delta_epsilon);
            v = find(Delta_epsilon == minE);
            g(v + 1) = g(v + 1) + 1;
        else
            if Delta_epsilon(u - 1) > 0 && Delta_epsilon(u) < 0
                g(u) = g(u) - 1;
                g(u + 1) = g(u + 1) + 1;

            elseif Delta_epsilon(u - 1) < 0 && Delta_epsilon(u) > 0
                g(u) = g(u) + 1;
                g(u + 1) = g(u + 1) - 1;

            elseif Delta_epsilon(u - 1) > 0 && Delta_epsilon(u) > 0
                if Delta_epsilon(u + 1) < 0
                    g(u + 1) = g(u + 1) - 1;
                end
            end
        end
    end
end
