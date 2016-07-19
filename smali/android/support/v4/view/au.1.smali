.class public final Landroid/support/v4/view/au;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# static fields
.field private static a:Landroid/support/v4/view/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 143
    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0}, Landroid/support/v4/view/az;-><init>()V

    sput-object v0, Landroid/support/v4/view/au;->a:Landroid/support/v4/view/ax;

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 145
    new-instance v0, Landroid/support/v4/view/ay;

    invoke-direct {v0}, Landroid/support/v4/view/ay;-><init>()V

    sput-object v0, Landroid/support/v4/view/au;->a:Landroid/support/v4/view/ax;

    goto :goto_0

    .line 146
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 147
    new-instance v0, Landroid/support/v4/view/aw;

    invoke-direct {v0}, Landroid/support/v4/view/aw;-><init>()V

    sput-object v0, Landroid/support/v4/view/au;->a:Landroid/support/v4/view/ax;

    goto :goto_0

    .line 148
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 149
    new-instance v0, Landroid/support/v4/view/av;

    invoke-direct {v0}, Landroid/support/v4/view/av;-><init>()V

    sput-object v0, Landroid/support/v4/view/au;->a:Landroid/support/v4/view/ax;

    goto :goto_0

    .line 151
    :cond_3
    new-instance v0, Landroid/support/v4/view/ax;

    invoke-direct {v0}, Landroid/support/v4/view/ax;-><init>()V

    sput-object v0, Landroid/support/v4/view/au;->a:Landroid/support/v4/view/ax;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 2

    .prologue
    .line 199
    sget-object v0, Landroid/support/v4/view/au;->a:Landroid/support/v4/view/ax;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/view/ax;->a(Landroid/view/ViewGroup;Z)V

    .line 200
    return-void
.end method
