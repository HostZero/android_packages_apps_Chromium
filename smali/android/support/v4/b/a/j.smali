.class Landroid/support/v4/b/a/j;
.super Ljava/lang/Object;
.source "DrawableCompatHoneycomb.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1063
    sget-boolean v0, Landroid/support/v4/b/a/j;->b:Z

    if-nez v0, :cond_0

    .line 1065
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v1, "getLayoutDirection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1066
    sput-object v0, Landroid/support/v4/b/a/j;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_0
    sput-boolean v3, Landroid/support/v4/b/a/j;->b:Z

    .line 1073
    :cond_0
    sget-object v0, Landroid/support/v4/b/a/j;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 1075
    :try_start_1
    sget-object v0, Landroid/support/v4/b/a/j;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1081
    :goto_1
    return v0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    const-string/jumbo v1, "DrawableCompatJellybeanMr1"

    const-string/jumbo v2, "Failed to retrieve getLayoutDirection() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1076
    :catch_1
    move-exception v0

    .line 1077
    const-string/jumbo v1, "DrawableCompatJellybeanMr1"

    const-string/jumbo v2, "Failed to invoke getLayoutDirection() via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/b/a/j;->a:Ljava/lang/reflect/Method;

    .line 1081
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
