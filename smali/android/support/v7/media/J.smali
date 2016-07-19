.class final Landroid/support/v7/media/J;
.super Landroid/support/v7/media/MediaRouteProvider$RouteController;
.source "RegisteredMediaRouteProvider.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Landroid/support/v7/media/G;

.field private f:I

.field private synthetic g:Landroid/support/v7/media/F;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/F;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 304
    iput-object p1, p0, Landroid/support/v7/media/J;->g:Landroid/support/v7/media/F;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;-><init>()V

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/J;->c:I

    .line 305
    iput-object p2, p0, Landroid/support/v7/media/J;->a:Ljava/lang/String;

    .line 306
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    iget v1, p0, Landroid/support/v7/media/J;->f:I

    invoke-virtual {v0, v1}, Landroid/support/v7/media/G;->b(I)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/media/J;->f:I

    .line 330
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/media/G;)V
    .locals 2

    .prologue
    .line 309
    iput-object p1, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    .line 310
    iget-object v0, p0, Landroid/support/v7/media/J;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/G;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/media/J;->f:I

    .line 311
    iget-boolean v0, p0, Landroid/support/v7/media/J;->b:Z

    if-eqz v0, :cond_1

    .line 312
    iget v0, p0, Landroid/support/v7/media/J;->f:I

    invoke-virtual {p1, v0}, Landroid/support/v7/media/G;->c(I)V

    .line 313
    iget v0, p0, Landroid/support/v7/media/J;->c:I

    if-ltz v0, :cond_0

    .line 314
    iget v0, p0, Landroid/support/v7/media/J;->f:I

    iget v1, p0, Landroid/support/v7/media/J;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/media/G;->b(II)V

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/J;->c:I

    .line 317
    :cond_0
    iget v0, p0, Landroid/support/v7/media/J;->d:I

    if-eqz v0, :cond_1

    .line 318
    iget v0, p0, Landroid/support/v7/media/J;->f:I

    iget v1, p0, Landroid/support/v7/media/J;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/media/G;->c(II)V

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/media/J;->d:I

    .line 322
    :cond_1
    return-void
.end method

.method public final onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/i;)Z
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    iget v1, p0, Landroid/support/v7/media/J;->f:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v7/media/G;->a(ILandroid/content/Intent;Landroid/support/v7/media/i;)Z

    move-result v0

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onRelease()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/media/J;->g:Landroid/support/v7/media/F;

    invoke-static {v0, p0}, Landroid/support/v7/media/F;->a(Landroid/support/v7/media/F;Landroid/support/v7/media/J;)V

    .line 335
    return-void
.end method

.method public final onSelect()V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/J;->b:Z

    .line 340
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    iget v1, p0, Landroid/support/v7/media/J;->f:I

    invoke-virtual {v0, v1}, Landroid/support/v7/media/G;->c(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public final onSetVolume(I)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    iget v1, p0, Landroid/support/v7/media/J;->f:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/G;->b(II)V

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_0
    iput p1, p0, Landroid/support/v7/media/J;->c:I

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/media/J;->d:I

    goto :goto_0
.end method

.method public final onUnselect()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/J;->onUnselect(I)V

    .line 348
    return-void
.end method

.method public final onUnselect(I)V
    .locals 2

    .prologue
    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/J;->b:Z

    .line 353
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    iget v1, p0, Landroid/support/v7/media/J;->f:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/G;->a(II)V

    .line 356
    :cond_0
    return-void
.end method

.method public final onUpdateVolume(I)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/support/v7/media/J;->e:Landroid/support/v7/media/G;

    iget v1, p0, Landroid/support/v7/media/J;->f:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/G;->c(II)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget v0, p0, Landroid/support/v7/media/J;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/media/J;->d:I

    goto :goto_0
.end method
