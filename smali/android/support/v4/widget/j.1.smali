.class Landroid/support/v4/widget/j;
.super Ljava/lang/Object;
.source "CompoundButtonCompatDonut.java"

# interfaces
.implements Landroid/support/v4/widget/p;


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 61
    sget-boolean v0, Landroid/support/v4/widget/j;->b:Z

    if-nez v0, :cond_0

    .line 63
    :try_start_0
    const-class v0, Landroid/widget/CompoundButton;

    const-string/jumbo v2, "mButtonDrawable"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 64
    sput-object v0, Landroid/support/v4/widget/j;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    sput-boolean v4, Landroid/support/v4/widget/j;->b:Z

    .line 71
    :cond_0
    sget-object v0, Landroid/support/v4/widget/j;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 73
    :try_start_1
    sget-object v0, Landroid/support/v4/widget/j;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :goto_1
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string/jumbo v2, "CompoundButtonCompatDonut"

    const-string/jumbo v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    const-string/jumbo v2, "CompoundButtonCompatDonut"

    const-string/jumbo v3, "Failed to get button drawable via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    sput-object v1, Landroid/support/v4/widget/j;->a:Ljava/lang/reflect/Field;

    :cond_1
    move-object v0, v1

    .line 79
    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1322
    invoke-static {p1}, Landroid/support/v4/widget/w;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1327
    invoke-static {p1}, Landroid/support/v4/widget/w;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1310
    invoke-static {p1}, Landroid/support/v4/widget/w;->a(Landroid/view/View;)V

    .line 1311
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1314
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/w;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 1315
    return-void
.end method

.method public a(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1318
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/w;->a(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    .line 1319
    return-void
.end method
