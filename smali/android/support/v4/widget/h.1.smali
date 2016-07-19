.class Landroid/support/v4/widget/h;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/widget/PopupWindow;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5034
    sget-boolean v0, Landroid/support/v4/widget/h;->b:Z

    if-nez v0, :cond_0

    .line 5036
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "setWindowLayoutType"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 5038
    sput-object v0, Landroid/support/v4/widget/h;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5042
    :goto_0
    sput-boolean v5, Landroid/support/v4/widget/h;->b:Z

    .line 5045
    :cond_0
    sget-object v0, Landroid/support/v4/widget/h;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 5047
    :try_start_1
    sget-object v0, Landroid/support/v4/widget/h;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5052
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3080
    invoke-static {p1}, Landroid/support/v4/widget/j;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1060
    .line 2035
    instance-of v0, p1, Landroid/support/v4/widget/al;

    if-eqz v0, :cond_0

    .line 2036
    check-cast p1, Landroid/support/v4/widget/al;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/al;->a(Landroid/content/res/ColorStateList;)V

    .line 1061
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 2070
    .line 3048
    instance-of v0, p1, Landroid/support/v4/widget/al;

    if-eqz v0, :cond_0

    .line 3049
    check-cast p1, Landroid/support/v4/widget/al;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/al;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 2071
    :cond_0
    return-void
.end method
