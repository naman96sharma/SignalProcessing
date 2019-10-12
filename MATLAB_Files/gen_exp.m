function y = gen_exp(n,lambda)
 rnd_num = rand(1,n);
 y = log(1-rnd_num)/(-lambda);
end
