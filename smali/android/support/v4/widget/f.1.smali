.class public final Landroid/support/v4/widget/f;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# static fields
.field private static final a:Landroid/support/v4/widget/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, Landroid/support/v4/widget/g;

    invoke-direct {v0}, Landroid/support/v4/widget/g;-><init>()V

    sput-object v0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/h;

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 43
    new-instance v0, Landroid/support/v4/widget/i;

    invoke-direct {v0}, Landroid/support/v4/widget/i;-><init>()V

    sput-object v0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/h;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Landroid/support/v4/widget/h;

    invoke-direct {v0}, Landroid/support/v4/widget/h;-><init>()V

    sput-object v0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/h;

    goto :goto_0
.end method

.method public static a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/h;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/h;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/h;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/h;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 129
    return-void
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/h;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/h;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    .line 155
    return-void
.end method
