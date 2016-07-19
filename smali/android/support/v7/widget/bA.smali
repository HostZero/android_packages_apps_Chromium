.class final Landroid/support/v7/widget/bA;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# instance fields
.field final a:Landroid/support/v4/g/a;

.field final b:Landroid/support/v4/g/f;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bA;->a:Landroid/support/v4/g/a;

    .line 50
    new-instance v0, Landroid/support/v4/g/f;

    invoke-direct {v0}, Landroid/support/v4/g/f;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bA;->b:Landroid/support/v4/g/f;

    .line 254
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/widget/bA;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->clear()V

    .line 58
    iget-object v0, p0, Landroid/support/v7/widget/bA;->b:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->b()V

    .line 59
    return-void
.end method

.method final a(JLandroid/support/v7/widget/aY;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v7/widget/bA;->b:Landroid/support/v4/g/f;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/g/f;->a(JLjava/lang/Object;)V

    .line 107
    return-void
.end method

.method final a(Landroid/support/v7/widget/aY;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/bA;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bB;

    .line 173
    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Landroid/support/v7/widget/bB;->a()Landroid/support/v7/widget/bB;

    move-result-object v0

    .line 175
    iget-object v1, p0, Landroid/support/v7/widget/bA;->a:Landroid/support/v4/g/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    iget v1, v0, Landroid/support/v7/widget/bB;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/bB;->a:I

    .line 178
    return-void
.end method

.method final a(Landroid/support/v7/widget/aY;Landroid/support/v7/widget/aK;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/bA;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bB;

    .line 68
    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Landroid/support/v7/widget/bB;->a()Landroid/support/v7/widget/bB;

    move-result-object v0

    .line 70
    iget-object v1, p0, Landroid/support/v7/widget/bA;->a:Landroid/support/v4/g/a;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/bB;->b:Landroid/support/v7/widget/aK;

    .line 73
    iget v1, v0, Landroid/support/v7/widget/bB;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v7/widget/bB;->a:I

    .line 74
    return-void
.end method

.method final b(Landroid/support/v7/widget/aY;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/bA;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bB;

    .line 186
    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v1, v0, Landroid/support/v7/widget/bB;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/bB;->a:I

    goto :goto_0
.end method

.method final c(Landroid/support/v7/widget/aY;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Landroid/support/v7/widget/bA;->b:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 229
    iget-object v1, p0, Landroid/support/v7/widget/bA;->b:Landroid/support/v4/g/f;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/f;->b(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 230
    iget-object v1, p0, Landroid/support/v7/widget/bA;->b:Landroid/support/v4/g/f;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/f;->a(I)V

    .line 234
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bA;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bB;

    .line 235
    if-eqz v0, :cond_1

    .line 236
    invoke-static {v0}, Landroid/support/v7/widget/bB;->a(Landroid/support/v7/widget/bB;)V

    .line 238
    :cond_1
    return-void

    .line 228
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
