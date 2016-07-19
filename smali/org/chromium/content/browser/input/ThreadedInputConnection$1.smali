.class final Lorg/chromium/content/browser/input/ThreadedInputConnection$1;
.super Lorg/chromium/content/browser/input/TextInputState;
.source "ThreadedInputConnection.java"


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lorg/chromium/content/browser/input/TextInputState;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    return-void
.end method


# virtual methods
.method public final shouldUnblock()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
