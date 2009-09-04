class BucketsController <  ApplicationController
  unloadable
  layout Buckets.layout
  
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
      format.js { render :json => @bucket.to_json}
    end
  end

  def new
    @bucket = Bucket.new

    respond_to do |format|
      format.html { render :action => (params[:ui] == 'ajax' ? 'ajax_new' : 'new')}
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
        format.xml  { render :xml => @bucket, :status => :created, :location => @bucket }
        format.html do
          flash[:notice] = t('bucket.flash.created')
          redirect_to buckets_path
        end
        format.js do
          if params[:response] == 'thumbnail'
            render :text => @bucket.thumbnail
          else
            render :json => @bucket.to_json
          end
        end
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bucket.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @bucket = Bucket.find(params[:id])

    respond_to do |format|
      if @bucket.update_attributes(params[:bucket])
        flash[:notice] = t('bucket.flash.updated')
        format.html { redirect_to buckets_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bucket.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @bucket = Bucket.find(params[:id])
    @bucket.destroy

    respond_to do |format|
      format.html { redirect_to(buckets_url) }
      format.xml  { head :ok }
    end
  end

  def destroy_all
    render :text => 'a por ello!'
  end
end
