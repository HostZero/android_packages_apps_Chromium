.class public final Landroid/support/v4/app/V;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# static fields
.field private static final a:Landroid/support/v4/app/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 831
    new-instance v0, Landroid/support/v4/app/ae;

    invoke-direct {v0}, Landroid/support/v4/app/ae;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->a:Landroid/support/v4/app/ac;

    .line 847
    :goto_0
    return-void

    .line 832
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 833
    new-instance v0, Landroid/support/v4/app/ad;

    invoke-direct {v0}, Landroid/support/v4/app/ad;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->a:Landroid/support/v4/app/ac;

    goto :goto_0

    .line 834
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 835
    new-instance v0, Landroid/support/v4/app/aj;

    invoke-direct {v0}, Landroid/support/v4/app/aj;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->a:Landroid/support/v4/app/ac;

    goto :goto_0

    .line 836
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 837
    new-instance v0, Landroid/support/v4/app/ai;

    invoke-direct {v0}, Landroid/support/v4/app/ai;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->a:Landroid/support/v4/app/ac;

    goto :goto_0

    .line 838
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 839
    new-instance v0, Landroid/support/v4/app/ah;

    invoke-direct {v0}, Landroid/support/v4/app/ah;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->a:Landroid/support/v4/app/ac;

    goto :goto_0

    .line 840
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 841
    new-instance v0, Landroid/support/v4/app/ag;

    invoke-direct {v0}, Landroid/support/v4/app/ag;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->a:Landroid/support/v4/app/ac;

    goto :goto_0

    .line 842
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 843
    new-instance v0, Landroid/support/v4/app/af;

    invoke-direct {v0}, Landroid/support/v4/app/af;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->a:Landroid/support/v4/app/ac;

    goto :goto_0

    .line 845
    :cond_6
    new-instance v0, Landroid/support/v4/app/ac;

    invoke-direct {v0}, Landroid/support/v4/app/ac;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->a:Landroid/support/v4/app/ac;

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 3290
    sget-object v0, Landroid/support/v4/app/V;->a:Landroid/support/v4/app/ac;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/ac;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Landroid/support/v4/app/ac;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/support/v4/app/V;->a:Landroid/support/v4/app/ac;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/U;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 42
    .line 3794
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/W;

    .line 3795
    invoke-interface {p0, v0}, Landroid/support/v4/app/U;->a(Landroid/support/v4/app/an;)V

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/ipc/invalidation/ticl/a/E;Landroid/support/v4/app/ak;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    .line 3801
    if-eqz p1, :cond_0

    .line 3802
    instance-of v0, p1, Landroid/support/v4/app/Y;

    if-eqz v0, :cond_1

    .line 3803
    check-cast p1, Landroid/support/v4/app/Y;

    .line 3804
    iget-object v0, p1, Landroid/support/v4/app/Y;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v1, v2, v1, v0}, Landroid/support/v4/app/aq;->a(Lcom/google/ipc/invalidation/ticl/a/E;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3816
    :cond_0
    :goto_0
    return-void

    .line 3809
    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/ab;

    if-eqz v0, :cond_2

    .line 3810
    check-cast p1, Landroid/support/v4/app/ab;

    .line 3811
    iget-object v0, p1, Landroid/support/v4/app/ab;->a:Ljava/util/ArrayList;

    invoke-static {p0, v1, v2, v1, v0}, Landroid/support/v4/app/aq;->a(Lcom/google/ipc/invalidation/ticl/a/E;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 3816
    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/X;

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move v6, v2

    .line 3818
    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/aq;->a(Lcom/google/ipc/invalidation/ticl/a/E;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
