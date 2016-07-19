.class final Landroid/support/v7/widget/af;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 2102
    iput-object p1, p0, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/af;Landroid/view/View;Landroid/support/v7/widget/aW;)Z
    .locals 2

    .prologue
    .line 2102
    .line 9132
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 9736
    iget-object v1, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v1}, Landroid/support/v7/widget/aY;->isRemoved()Z

    move-result v1

    .line 9133
    if-nez v1, :cond_0

    .line 9764
    iget-object v1, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v1}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v1

    .line 9133
    if-ltz v1, :cond_0

    .line 10764
    iget-object v0, v0, Landroid/support/v7/widget/aO;->a:Landroid/support/v7/widget/aY;

    invoke-virtual {v0}, Landroid/support/v7/widget/aY;->getLayoutPosition()I

    move-result v0

    .line 9133
    invoke-virtual {p2}, Landroid/support/v7/widget/aW;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2102
    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 2117
    iget-boolean v0, p0, Landroid/support/v7/widget/af;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->d()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    .line 2120
    return-void

    .line 2117
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2185
    iget-boolean v0, p0, Landroid/support/v7/widget/af;->c:Z

    if-eqz v0, :cond_0

    .line 2186
    iget-object v0, p0, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ax;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v1}, Landroid/support/v7/widget/ax;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    .line 2192
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/af;->a:I

    .line 2193
    return-void

    .line 2189
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/ax;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ax;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/af;->b:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/af;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/af;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/af;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
