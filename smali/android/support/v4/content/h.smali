.class public final Landroid/support/v4/content/h;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field private a:I

.field private b:Landroid/support/v4/content/i;

.field private c:Landroid/support/v4/content/i;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/h;->d:Z

    .line 270
    iput-boolean v1, p0, Landroid/support/v4/content/h;->f:Z

    .line 271
    iput-boolean v1, p0, Landroid/support/v4/content/h;->e:Z

    .line 273
    return-void
.end method

.method public final a(ILandroid/support/v4/content/i;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v4/content/h;->b:Landroid/support/v4/content/i;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iput-object p2, p0, Landroid/support/v4/content/h;->b:Landroid/support/v4/content/i;

    .line 168
    iput p1, p0, Landroid/support/v4/content/h;->a:I

    .line 169
    return-void
.end method

.method public final a(Landroid/support/v4/content/i;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/content/h;->b:Landroid/support/v4/content/i;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/h;->b:Landroid/support/v4/content/i;

    if-eq v0, p1, :cond_1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/h;->b:Landroid/support/v4/content/i;

    .line 184
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 522
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/h;->a:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 523
    const-string/jumbo v0, " mListener="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/h;->b:Landroid/support/v4/content/i;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    iget-boolean v0, p0, Landroid/support/v4/content/h;->d:Z

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/h;->d:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 526
    const-string/jumbo v0, " mContentChanged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 527
    const-string/jumbo v0, " mProcessingChange="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 529
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/content/h;->f:Z

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 531
    const-string/jumbo v0, " mReset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/h;->f:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/h;->d:Z

    .line 362
    return-void
.end method

.method public final b(Landroid/support/v4/content/i;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v4/content/h;->c:Landroid/support/v4/content/i;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iput-object p1, p0, Landroid/support/v4/content/h;->c:Landroid/support/v4/content/i;

    .line 200
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/h;->f:Z

    .line 422
    iput-boolean v1, p0, Landroid/support/v4/content/h;->d:Z

    .line 423
    iput-boolean v1, p0, Landroid/support/v4/content/h;->e:Z

    .line 424
    iput-boolean v1, p0, Landroid/support/v4/content/h;->g:Z

    .line 425
    iput-boolean v1, p0, Landroid/support/v4/content/h;->h:Z

    .line 426
    return-void
.end method

.method public final c(Landroid/support/v4/content/i;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v4/content/h;->c:Landroid/support/v4/content/i;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/h;->c:Landroid/support/v4/content/i;

    if-eq v0, p1, :cond_1

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/h;->c:Landroid/support/v4/content/i;

    .line 218
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    invoke-static {p0, v0}, Landroid/support/customtabs/a;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 507
    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget v1, p0, Landroid/support/v4/content/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
