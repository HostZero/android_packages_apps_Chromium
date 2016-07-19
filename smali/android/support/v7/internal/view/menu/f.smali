.class public Landroid/support/v7/internal/view/menu/f;
.super Ljava/lang/Object;
.source "BaseWrapper.java"


# instance fields
.field final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrapped Object can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/f;->b:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/d/a/a;)Landroid/view/Menu;
    .locals 2

    .prologue
    .line 1036
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1037
    new-instance v0, Landroid/support/v7/internal/view/menu/B;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/view/menu/B;-><init>(Landroid/content/Context;Landroid/support/v4/d/a/a;)V

    return-object v0

    .line 1039
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/d/a/b;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 1043
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1044
    new-instance v0, Landroid/support/v7/internal/view/menu/t;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/view/menu/t;-><init>(Landroid/content/Context;Landroid/support/v4/d/a/b;)V

    .line 1046
    :goto_0
    return-object v0

    .line 1045
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 1046
    new-instance v0, Landroid/support/v7/internal/view/menu/o;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/view/menu/o;-><init>(Landroid/content/Context;Landroid/support/v4/d/a/b;)V

    goto :goto_0

    .line 1048
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
