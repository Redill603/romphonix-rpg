// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function give_memcard(item,number){
	i = 0
	repeat(20)
	{
		if ds_grid_get(global.dsgrid_bag,4,i) == 0
		{
			ds_grid_set(global.dsgrid_bag,4,i,item)
			ds_grid_set(global.dsgrid_bag,5,i,number)
			return 1
		}
		else
		{
			i += 1
		}
	}
	return -1
}