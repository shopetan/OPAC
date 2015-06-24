# coding: utf-8
class OpacController < ApplicationController
  
  def search

    # get query
    @query = Opac.ransack(params[:q])
    @flag = params[:q] ? false : true
    @page ||= '1'
    @hits = @query.result.size
    @opac = @query.result.page(params[:page])
    
    respond_to do |format|
      format.html 
      format.json {render json:@opac}
    end
  end

  def detail
    
    # NBC
    nbc = params[:nbc]

    # get opac data
    @opac = Opac.where({'nbc'=>nbc})
  end


end
