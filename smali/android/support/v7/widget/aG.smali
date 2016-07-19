.class public abstract Landroid/support/v7/widget/aG;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v7/widget/aH;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5134
    new-instance v0, Landroid/support/v7/widget/aH;

    invoke-direct {v0}, Landroid/support/v7/widget/aH;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aG;->mObservable:Landroid/support/v7/widget/aH;

    .line 5135
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/aG;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroid/support/v7/widget/aY;I)V
    .locals 2

    .prologue
    .line 5237
    iput p2, p1, Landroid/support/v7/widget/aY;->mPosition:I

    .line 5238
    invoke-virtual {p0}, Landroid/support/v7/widget/aG;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5239
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/aG;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/aY;->mItemId:J

    .line 5241
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/aY;->setFlags(II)V

    .line 5244
    const-string/jumbo v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/e/a;->a(Ljava/lang/String;)V

    .line 5245
    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/aG;->onBindViewHolder(Landroid/support/v7/widget/aY;ILjava/util/List;)V

    .line 5246
    invoke-virtual {p1}, Landroid/support/v7/widget/aY;->clearPayload()V

    .line 5247
    invoke-static {}, Landroid/support/v4/e/a;->a()V

    .line 5248
    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aY;
    .locals 1

    .prologue
    .line 5222
    const-string/jumbo v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/e/a;->a(Ljava/lang/String;)V

    .line 5223
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/aG;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aY;

    move-result-object v0

    .line 5224
    iput p2, v0, Landroid/support/v7/widget/aY;->mItemViewType:I

    .line 5225
    invoke-static {}, Landroid/support/v4/e/a;->a()V

    .line 5226
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 5291
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 5263
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 5309
    iget-boolean v0, p0, Landroid/support/v7/widget/aG;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 5488
    iget-object v0, p0, Landroid/support/v7/widget/aG;->mObservable:Landroid/support/v7/widget/aH;

    invoke-virtual {v0}, Landroid/support/v7/widget/aH;->a()V

    .line 5489
    return-void
.end method

.method public final notifyItemChanged(I)V
    .locals 3

    .prologue
    .line 5504
    iget-object v0, p0, Landroid/support/v7/widget/aG;->mObservable:Landroid/support/v7/widget/aH;

    .line 10242
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/aH;->a(IILjava/lang/Object;)V

    .line 5505
    return-void
.end method

.method public final notifyItemRemoved(I)V
    .locals 2

    .prologue
    .line 5648
    iget-object v0, p0, Landroid/support/v7/widget/aG;->mObservable:Landroid/support/v7/widget/aH;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/aH;->a(II)V

    .line 5649
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5447
    return-void
.end method

.method public abstract onBindViewHolder(Landroid/support/v7/widget/aY;I)V
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/aY;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 5212
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/aG;->onBindViewHolder(Landroid/support/v7/widget/aY;I)V

    .line 5213
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aY;
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5456
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/aY;)Z
    .locals 1

    .prologue
    .line 5367
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/aY;)V
    .locals 0

    .prologue
    .line 5381
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/aY;)V
    .locals 0

    .prologue
    .line 5393
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/aY;)V
    .locals 0

    .prologue
    .line 5330
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/aI;)V
    .locals 1

    .prologue
    .line 5421
    iget-object v0, p0, Landroid/support/v7/widget/aG;->mObservable:Landroid/support/v7/widget/aH;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aH;->registerObserver(Ljava/lang/Object;)V

    .line 5422
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/aI;)V
    .locals 1

    .prologue
    .line 5435
    iget-object v0, p0, Landroid/support/v7/widget/aG;->mObservable:Landroid/support/v7/widget/aH;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aH;->unregisterObserver(Ljava/lang/Object;)V

    .line 5436
    return-void
.end method
