.class public final Landroid/support/b/a/a;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# static fields
.field private static a:Landroid/support/b/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 107
    new-instance v0, Landroid/support/b/a/e;

    invoke-direct {v0}, Landroid/support/b/a/e;-><init>()V

    sput-object v0, Landroid/support/b/a/a;->a:Landroid/support/b/a/b;

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 109
    new-instance v0, Landroid/support/b/a/d;

    invoke-direct {v0}, Landroid/support/b/a/d;-><init>()V

    sput-object v0, Landroid/support/b/a/a;->a:Landroid/support/b/a/b;

    goto :goto_0

    .line 110
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 111
    new-instance v0, Landroid/support/b/a/c;

    invoke-direct {v0}, Landroid/support/b/a/c;-><init>()V

    sput-object v0, Landroid/support/b/a/a;->a:Landroid/support/b/a/b;

    goto :goto_0

    .line 113
    :cond_2
    new-instance v0, Landroid/support/b/a/b;

    invoke-direct {v0}, Landroid/support/b/a/b;-><init>()V

    sput-object v0, Landroid/support/b/a/a;->a:Landroid/support/b/a/b;

    goto :goto_0
.end method

.method public static a(Landroid/app/Fragment;Z)V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Landroid/support/b/a/a;->a:Landroid/support/b/a/b;

    invoke-virtual {v0, p0, p1}, Landroid/support/b/a/b;->a(Landroid/app/Fragment;Z)V

    .line 146
    return-void
.end method

.method public static b(Landroid/app/Fragment;Z)V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Landroid/support/b/a/a;->a:Landroid/support/b/a/b;

    invoke-virtual {v0, p0, p1}, Landroid/support/b/a/b;->b(Landroid/app/Fragment;Z)V

    .line 154
    return-void
.end method
