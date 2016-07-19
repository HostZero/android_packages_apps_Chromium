.class final Landroid/support/v7/widget/n;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroid/support/v7/widget/aw;


# instance fields
.field final a:Ljava/util/ArrayList;

.field private b:Landroid/support/customtabs/a;

.field private c:Ljava/util/ArrayList;

.field private d:Landroid/support/v7/widget/o;

.field private e:Z

.field private f:Landroid/support/v7/widget/av;

.field private g:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/o;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/n;-><init>(Landroid/support/v7/widget/o;Z)V

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/o;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/support/customtabs/a;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/customtabs/a;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/customtabs/a;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    .line 70
    iput v2, p0, Landroid/support/v7/widget/n;->g:I

    .line 77
    iput-object p1, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    .line 78
    iput-boolean v2, p0, Landroid/support/v7/widget/n;->e:Z

    .line 79
    new-instance v0, Landroid/support/v7/widget/av;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/av;-><init>(Landroid/support/v7/widget/aw;)V

    iput-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/av;

    .line 80
    return-void
.end method

.method private a(Landroid/support/v7/widget/p;I)V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/o;->a(Landroid/support/v7/widget/p;)V

    .line 317
    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    packed-switch v0, :pswitch_data_0

    .line 325
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->d:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/o;->a(II)V

    .line 323
    :goto_0
    return-void

    .line 322
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->d:I

    iget-object v2, p1, Landroid/support/v7/widget/p;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Landroid/support/v7/widget/o;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 736
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 737
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 738
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 737
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 740
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 741
    return-void
.end method

.method private b(Landroid/support/v7/widget/p;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 232
    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    iget v0, p1, Landroid/support/v7/widget/p;->b:I

    iget v3, p1, Landroid/support/v7/widget/p;->a:I

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/n;->c(II)I

    move-result v4

    .line 251
    iget v3, p1, Landroid/support/v7/widget/p;->b:I

    .line 253
    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    packed-switch v0, :pswitch_data_0

    .line 261
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v1

    :goto_0
    move v5, v1

    move v6, v4

    move v4, v3

    move v3, v1

    .line 263
    :goto_1
    iget v7, p1, Landroid/support/v7/widget/p;->d:I

    if-ge v3, v7, :cond_6

    .line 264
    iget v7, p1, Landroid/support/v7/widget/p;->b:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    .line 265
    iget v8, p1, Landroid/support/v7/widget/p;->a:I

    invoke-direct {p0, v7, v8}, Landroid/support/v7/widget/n;->c(II)I

    move-result v8

    .line 270
    iget v7, p1, Landroid/support/v7/widget/p;->a:I

    packed-switch v7, :pswitch_data_1

    :pswitch_2
    move v7, v2

    .line 278
    :goto_2
    if-eqz v7, :cond_4

    .line 279
    add-int/lit8 v5, v5, 0x1

    .line 263
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_3
    move v0, v2

    .line 259
    goto :goto_0

    .line 272
    :pswitch_4
    add-int/lit8 v7, v6, 0x1

    if-ne v8, v7, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_2

    .line 275
    :pswitch_5
    if-ne v8, v6, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_2

    .line 282
    :cond_4
    iget v7, p1, Landroid/support/v7/widget/p;->a:I

    iget-object v9, p1, Landroid/support/v7/widget/p;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6, v5, v9}, Landroid/support/v7/widget/n;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;

    move-result-object v6

    .line 286
    invoke-direct {p0, v6, v4}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;I)V

    .line 287
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 288
    iget v6, p1, Landroid/support/v7/widget/p;->a:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 289
    add-int/2addr v4, v5

    :cond_5
    move v5, v1

    move v6, v8

    .line 292
    goto :goto_3

    .line 295
    :cond_6
    iget-object v0, p1, Landroid/support/v7/widget/p;->c:Ljava/lang/Object;

    .line 296
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 297
    if-lez v5, :cond_7

    .line 298
    iget v1, p1, Landroid/support/v7/widget/p;->a:I

    invoke-virtual {p0, v1, v6, v5, v0}, Landroid/support/v7/widget/n;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;

    move-result-object v0

    .line 302
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;I)V

    .line 303
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 313
    :cond_7
    return-void

    .line 253
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private c(II)I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 331
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 332
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_0
    if-ltz v4, :cond_e

    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 334
    iget v2, v0, Landroid/support/v7/widget/p;->a:I

    if-ne v2, v7, :cond_9

    .line 336
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    iget v3, v0, Landroid/support/v7/widget/p;->d:I

    if-ge v2, v3, :cond_1

    .line 337
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    .line 338
    iget v2, v0, Landroid/support/v7/widget/p;->d:I

    .line 343
    :goto_1
    if-lt v1, v3, :cond_6

    if-gt v1, v2, :cond_6

    .line 345
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    if-ne v3, v2, :cond_3

    .line 346
    if-ne p2, v5, :cond_2

    .line 347
    iget v2, v0, Landroid/support/v7/widget/p;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/p;->d:I

    .line 352
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .line 332
    :goto_3
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 340
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/p;->d:I

    .line 341
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    goto :goto_1

    .line 348
    :cond_2
    if-ne p2, v6, :cond_0

    .line 349
    iget v2, v0, Landroid/support/v7/widget/p;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/p;->d:I

    goto :goto_2

    .line 354
    :cond_3
    if-ne p2, v5, :cond_5

    .line 355
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    .line 360
    :cond_4
    :goto_4
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    .line 356
    :cond_5
    if-ne p2, v6, :cond_4

    .line 357
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    goto :goto_4

    .line 362
    :cond_6
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    if-ge v1, v2, :cond_8

    .line 364
    if-ne p2, v5, :cond_7

    .line 365
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    .line 366
    iget v2, v0, Landroid/support/v7/widget/p;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/p;->d:I

    move v0, v1

    goto :goto_3

    .line 367
    :cond_7
    if-ne p2, v6, :cond_8

    .line 368
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    .line 369
    iget v2, v0, Landroid/support/v7/widget/p;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/p;->d:I

    :cond_8
    move v0, v1

    .line 372
    goto :goto_3

    .line 373
    :cond_9
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    if-gt v2, v1, :cond_b

    .line 374
    iget v2, v0, Landroid/support/v7/widget/p;->a:I

    if-ne v2, v5, :cond_a

    .line 375
    iget v0, v0, Landroid/support/v7/widget/p;->d:I

    sub-int v0, v1, v0

    goto :goto_3

    .line 376
    :cond_a
    iget v2, v0, Landroid/support/v7/widget/p;->a:I

    if-ne v2, v6, :cond_d

    .line 377
    iget v0, v0, Landroid/support/v7/widget/p;->d:I

    add-int/2addr v0, v1

    goto :goto_3

    .line 380
    :cond_b
    if-ne p2, v5, :cond_c

    .line 381
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    move v0, v1

    goto :goto_3

    .line 382
    :cond_c
    if-ne p2, v6, :cond_d

    .line 383
    iget v2, v0, Landroid/support/v7/widget/p;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/p;->b:I

    :cond_d
    move v0, v1

    goto :goto_3

    .line 396
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5
    if-ltz v2, :cond_12

    .line 397
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 398
    iget v3, v0, Landroid/support/v7/widget/p;->a:I

    if-ne v3, v7, :cond_11

    .line 399
    iget v3, v0, Landroid/support/v7/widget/p;->d:I

    iget v4, v0, Landroid/support/v7/widget/p;->b:I

    if-eq v3, v4, :cond_f

    iget v3, v0, Landroid/support/v7/widget/p;->d:I

    if-gez v3, :cond_10

    .line 400
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 401
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 396
    :cond_10
    :goto_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5

    .line 403
    :cond_11
    iget v3, v0, Landroid/support/v7/widget/p;->d:I

    if-gtz v3, :cond_10

    .line 404
    iget-object v3, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 405
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    goto :goto_6

    .line 408
    :cond_12
    return v1
.end method

.method private c(Landroid/support/v7/widget/p;)V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget v0, p1, Landroid/support/v7/widget/p;->a:I

    packed-switch v0, :pswitch_data_0

    .line 456
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->b:I

    iget v2, p1, Landroid/support/v7/widget/p;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/o;->c(II)V

    .line 454
    :goto_0
    return-void

    .line 446
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->b:I

    iget v2, p1, Landroid/support/v7/widget/p;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/o;->d(II)V

    goto :goto_0

    .line 449
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->b:I

    iget v2, p1, Landroid/support/v7/widget/p;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/o;->b(II)V

    goto :goto_0

    .line 453
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v1, p1, Landroid/support/v7/widget/p;->b:I

    iget v2, p1, Landroid/support/v7/widget/p;->d:I

    iget-object v3, p1, Landroid/support/v7/widget/p;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/o;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private c(I)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 412
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 413
    :goto_0
    if-ge v3, v4, :cond_3

    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 415
    iget v5, v0, Landroid/support/v7/widget/p;->a:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 416
    iget v0, v0, Landroid/support/v7/widget/p;->d:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/n;->a(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    move v0, v1

    .line 429
    :goto_1
    return v0

    .line 419
    :cond_0
    iget v5, v0, Landroid/support/v7/widget/p;->a:I

    if-ne v5, v1, :cond_2

    .line 421
    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v6, v0, Landroid/support/v7/widget/p;->d:I

    add-int/2addr v5, v6

    .line 422
    iget v0, v0, Landroid/support/v7/widget/p;->b:I

    :goto_2
    if-ge v0, v5, :cond_2

    .line 423
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v0, v6}, Landroid/support/v7/widget/n;->a(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    move v0, v1

    .line 424
    goto :goto_1

    .line 422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 413
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 429
    goto :goto_1
.end method


# virtual methods
.method final a(II)I
    .locals 5

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    .line 474
    :goto_0
    if-ge p2, v2, :cond_4

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 476
    iget v3, v0, Landroid/support/v7/widget/p;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 477
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    if-ne v3, v1, :cond_1

    .line 478
    iget v1, v0, Landroid/support/v7/widget/p;->d:I

    .line 474
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 480
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    if-ge v3, v1, :cond_2

    .line 481
    add-int/lit8 v1, v1, -0x1

    .line 483
    :cond_2
    iget v0, v0, Landroid/support/v7/widget/p;->d:I

    if-gt v0, v1, :cond_0

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 487
    :cond_3
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    if-gt v3, v1, :cond_0

    .line 488
    iget v3, v0, Landroid/support/v7/widget/p;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 489
    iget v3, v0, Landroid/support/v7/widget/p;->b:I

    iget v4, v0, Landroid/support/v7/widget/p;->d:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 490
    const/4 v1, -0x1

    .line 498
    :cond_4
    return v1

    .line 492
    :cond_5
    iget v0, v0, Landroid/support/v7/widget/p;->d:I

    sub-int/2addr v1, v0

    goto :goto_1

    .line 493
    :cond_6
    iget v3, v0, Landroid/support/v7/widget/p;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 494
    iget v0, v0, Landroid/support/v7/widget/p;->d:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public final a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/customtabs/a;

    invoke-virtual {v0}, Landroid/support/customtabs/a;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 716
    if-nez v0, :cond_0

    .line 717
    new-instance v0, Landroid/support/v7/widget/p;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/p;-><init>(IIILjava/lang/Object;)V

    .line 724
    :goto_0
    return-object v0

    .line 719
    :cond_0
    iput p1, v0, Landroid/support/v7/widget/p;->a:I

    .line 720
    iput p2, v0, Landroid/support/v7/widget/p;->b:I

    .line 721
    iput p3, v0, Landroid/support/v7/widget/p;->d:I

    .line 722
    iput-object p4, v0, Landroid/support/v7/widget/p;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->a(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->a(Ljava/util/List;)V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/n;->g:I

    .line 91
    return-void
.end method

.method public final a(Landroid/support/v7/widget/p;)V
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Landroid/support/v7/widget/n;->e:Z

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/p;->c:Ljava/lang/Object;

    .line 731
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/customtabs/a;

    invoke-virtual {v0, p1}, Landroid/support/customtabs/a;->release(Ljava/lang/Object;)Z

    .line 733
    :cond_0
    return-void
.end method

.method final a(I)Z
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Landroid/support/v7/widget/n;->g:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(IILjava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 505
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/support/v7/widget/n;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget v1, p0, Landroid/support/v7/widget/n;->g:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/support/v7/widget/n;->g:I

    .line 507
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(I)I
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/n;->a(II)I

    move-result v0

    return v0
.end method

.method final b()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/av;

    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->a(Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v8, v3

    .line 96
    :goto_0
    if-ge v8, v9, :cond_d

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 98
    iget v1, v0, Landroid/support/v7/widget/p;->a:I

    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1433
    :pswitch_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    goto :goto_1

    .line 2135
    :pswitch_2
    iget v10, v0, Landroid/support/v7/widget/p;->b:I

    .line 2137
    iget v1, v0, Landroid/support/v7/widget/p;->b:I

    iget v4, v0, Landroid/support/v7/widget/p;->d:I

    add-int v5, v1, v4

    .line 2138
    const/4 v6, -0x1

    .line 2139
    iget v4, v0, Landroid/support/v7/widget/p;->b:I

    move v7, v3

    :goto_2
    if-ge v4, v5, :cond_3

    .line 2141
    iget-object v1, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v1, v4}, Landroid/support/v7/widget/o;->a(I)Landroid/support/v7/widget/aY;

    move-result-object v1

    .line 2142
    if-nez v1, :cond_0

    invoke-direct {p0, v4}, Landroid/support/v7/widget/n;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2149
    :cond_0
    if-nez v6, :cond_f

    .line 2152
    invoke-virtual {p0, v11, v10, v7, v13}, Landroid/support/v7/widget/n;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;

    move-result-object v1

    .line 2153
    invoke-direct {p0, v1}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/p;)V

    move v1, v2

    :goto_3
    move v6, v2

    .line 2169
    :goto_4
    if-eqz v1, :cond_2

    .line 2170
    sub-int v1, v4, v7

    .line 2171
    sub-int v4, v5, v7

    move v5, v2

    .line 2139
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v5

    move v5, v4

    move v4, v1

    goto :goto_2

    .line 2160
    :cond_1
    if-ne v6, v2, :cond_e

    .line 2163
    invoke-virtual {p0, v11, v10, v7, v13}, Landroid/support/v7/widget/n;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;

    move-result-object v1

    .line 2164
    invoke-direct {p0, v1}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    move v1, v2

    :goto_6
    move v6, v3

    .line 2167
    goto :goto_4

    .line 2174
    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v14, v4

    move v4, v5

    move v5, v1

    move v1, v14

    goto :goto_5

    .line 2177
    :cond_3
    iget v1, v0, Landroid/support/v7/widget/p;->d:I

    if-eq v7, v1, :cond_4

    .line 2178
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 2179
    invoke-virtual {p0, v11, v10, v7, v13}, Landroid/support/v7/widget/n;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;

    move-result-object v0

    .line 2181
    :cond_4
    if-nez v6, :cond_5

    .line 2182
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/p;)V

    goto :goto_1

    .line 2184
    :cond_5
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    goto :goto_1

    .line 2189
    :pswitch_3
    iget v4, v0, Landroid/support/v7/widget/p;->b:I

    .line 2191
    iget v1, v0, Landroid/support/v7/widget/p;->b:I

    iget v5, v0, Landroid/support/v7/widget/p;->d:I

    add-int v7, v1, v5

    .line 2192
    const/4 v1, -0x1

    .line 2193
    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    move v6, v1

    move v1, v3

    :goto_7
    if-ge v5, v7, :cond_a

    .line 2194
    iget-object v10, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v10, v5}, Landroid/support/v7/widget/o;->a(I)Landroid/support/v7/widget/aY;

    move-result-object v10

    .line 2195
    if-nez v10, :cond_6

    invoke-direct {p0, v5}, Landroid/support/v7/widget/n;->c(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2196
    :cond_6
    if-nez v6, :cond_7

    .line 2197
    iget-object v6, v0, Landroid/support/v7/widget/p;->c:Ljava/lang/Object;

    invoke-virtual {p0, v12, v4, v1, v6}, Landroid/support/v7/widget/n;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;

    move-result-object v1

    .line 2199
    invoke-direct {p0, v1}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/p;)V

    move v1, v3

    move v4, v5

    :cond_7
    move v6, v4

    move v4, v1

    move v1, v2

    .line 2214
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 2193
    add-int/lit8 v5, v5, 0x1

    move v14, v1

    move v1, v4

    move v4, v6

    move v6, v14

    goto :goto_7

    .line 2205
    :cond_8
    if-ne v6, v2, :cond_9

    .line 2206
    iget-object v6, v0, Landroid/support/v7/widget/p;->c:Ljava/lang/Object;

    invoke-virtual {p0, v12, v4, v1, v6}, Landroid/support/v7/widget/n;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;

    move-result-object v1

    .line 2208
    invoke-direct {p0, v1}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    move v1, v3

    move v4, v5

    :cond_9
    move v6, v4

    move v4, v1

    move v1, v3

    .line 2212
    goto :goto_8

    .line 2216
    :cond_a
    iget v5, v0, Landroid/support/v7/widget/p;->d:I

    if-eq v1, v5, :cond_b

    .line 2217
    iget-object v5, v0, Landroid/support/v7/widget/p;->c:Ljava/lang/Object;

    .line 2218
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Landroid/support/v7/widget/p;)V

    .line 2219
    invoke-virtual {p0, v12, v4, v1, v5}, Landroid/support/v7/widget/n;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;

    move-result-object v0

    .line 2221
    :cond_b
    if-nez v6, :cond_c

    .line 2222
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->b(Landroid/support/v7/widget/p;)V

    goto/16 :goto_1

    .line 2224
    :cond_c
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    goto/16 :goto_1

    .line 3131
    :pswitch_4
    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->c(Landroid/support/v7/widget/p;)V

    goto/16 :goto_1

    .line 116
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    return-void

    :cond_e
    move v1, v3

    goto/16 :goto_6

    :cond_f
    move v1, v3

    goto/16 :goto_3

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method final b(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 523
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, p2, v3}, Landroid/support/v7/widget/n;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget v1, p0, Landroid/support/v7/widget/n;->g:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/n;->g:I

    .line 525
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 121
    :goto_0
    if-ge v1, v3, :cond_0

    .line 122
    iget-object v4, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/p;)V

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->a(Ljava/util/List;)V

    .line 125
    iput v2, p0, Landroid/support/v7/widget/n;->g:I

    .line 126
    return-void
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 549
    invoke-virtual {p0}, Landroid/support/v7/widget/n;->c()V

    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 551
    :goto_0
    if-ge v1, v3, :cond_0

    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    .line 553
    iget v4, v0, Landroid/support/v7/widget/p;->a:I

    packed-switch v4, :pswitch_data_0

    .line 551
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 555
    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/p;)V

    .line 556
    iget-object v4, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v0, v0, Landroid/support/v7/widget/p;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/o;->c(II)V

    goto :goto_1

    .line 559
    :pswitch_2
    iget-object v4, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/p;)V

    .line 560
    iget-object v4, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v0, v0, Landroid/support/v7/widget/p;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/o;->a(II)V

    goto :goto_1

    .line 563
    :pswitch_3
    iget-object v4, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/p;)V

    .line 564
    iget-object v4, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v6, v0, Landroid/support/v7/widget/p;->d:I

    iget-object v0, v0, Landroid/support/v7/widget/p;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v0}, Landroid/support/v7/widget/o;->a(IILjava/lang/Object;)V

    goto :goto_1

    .line 567
    :pswitch_4
    iget-object v4, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/o;->b(Landroid/support/v7/widget/p;)V

    .line 568
    iget-object v4, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/o;

    iget v5, v0, Landroid/support/v7/widget/p;->b:I

    iget v0, v0, Landroid/support/v7/widget/p;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/o;->d(II)V

    goto :goto_1

    .line 575
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/n;->a(Ljava/util/List;)V

    .line 576
    iput v2, p0, Landroid/support/v7/widget/n;->g:I

    .line 577
    return-void

    .line 553
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
