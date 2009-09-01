class BucketsController < ApplicationController
  layout 'buckets'
  
  def index
    @buckets = Bucket.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @buckets }
    end
  end

  def show
    @bucket = Bucket.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @bucket }
    end
  end

  def new
    @bucket = Bucket.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bucket }
    end
  end

  def edit
    @bucket = Bucket.find(params[:id])
  end

  def create
    @bucket = Bucket.new(params[:bucket])

    respond_to do |format|
      if @bucket.save
        flash[:notice] = t('buckets.created')
        format.html { redirect_to buckets_path }
        format.xml  { render :xml => @bucket, :status => :created, :location => @bucket }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bucket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /buckets/1
  # PUT /buckets/1.xml
  def update
    @bucket = Bucket.find(params[:id])

    respond_to do |format|
      if @bucket.update_attributes(params[:bucket])
        flash[:notice] = t('buckets.updated')
        format.html { redirect_to buckets_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bucket.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /buckets/1
  # DELETE /buckets/1.xml
  def destroy
    @bucket = Bucket.find(params[:id])
    @bucket.destroy

    respond_to do |format|
      format.html { redirect_to(buckets_url) }
      format.xml  { head :ok }
    end
  end
end
