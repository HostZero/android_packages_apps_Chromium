.class public final Lorg/chromium/chrome/browser/ApplicationInitialization;
.super Ljava/lang/Object;
.source "ApplicationInitialization.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static enableFullscreenFlags(Landroid/content/res/Resources;Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-static {p1}, Lorg/chromium/content/app/ContentApplication;->initCommandLine(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "disable-fullscreen"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 38
    sget v2, Lorg/chromium/chrome/R$floats;->top_controls_show_threshold:I

    invoke-virtual {p0, v2, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 39
    const-string/jumbo v2, "top-controls-show-threshold"

    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/chromium/base/CommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget v2, Lorg/chromium/chrome/R$floats;->top_controls_hide_threshold:I

    invoke-virtual {p0, v2, v1, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 42
    const-string/jumbo v2, "top-controls-hide-threshold"

    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/chromium/base/CommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
