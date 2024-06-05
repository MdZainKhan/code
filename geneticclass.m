% Objective function
f = @(x) x.^2;

% Genetic Algorithm parameters
populationSize = 50;
numGenerations = 100;
mutationRate = 0.01;

% Initialize population
population = rand(populationSize, 1) * 10;

% Main loop
for gen = 1:numGenerations
    % Evaluate fitness
    fitness = f(population);
    
    % Selection
    [~, sortedIndices] = sort(fitness);
    selectedIndices = sortedIndices(1:round(0.5 * populationSize)); % Select top 50%
    selectedPopulation = population(selectedIndices);
    
    % Crossover (single point crossover)
    offspring = zeros(populationSize, 1);
    for i = 1:2:populationSize
        parent1 = selectedPopulation(randi(length(selectedPopulation)));
        parent2 = selectedPopulation(randi(length(selectedPopulation)));
        crossoverPoint = randi(length(parent1));
        offspring(i) = [parent1(1:crossoverPoint); parent2(crossoverPoint+1:end)];
        offspring(i+1) = [parent2(1:crossoverPoint); parent1(crossoverPoint+1:end)];
    end
    
    % Mutation
    mutationMask = rand(populationSize, 1) < mutationRate;
    mutationAmount = randn(populationSize, 1); % Gaussian mutation
    offspring = offspring + mutationMask .* mutationAmount;
    
    % Replacement
    population = offspring;
end

% Find best solution
bestIndex = find(fitness == min(fitness), 1);
bestSolution = population(bestIndex);
bestFitness = f(bestSolution);

disp(['Best solution found: x = ', num2str(bestSolution), ', f(x) = ', num2str(bestFitness)]);