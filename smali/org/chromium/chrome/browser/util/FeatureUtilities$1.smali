.class final Lorg/chromium/chrome/browser/util/FeatureUtilities$1;
.super Ljava/lang/Object;
.source "FeatureUtilities.java"

# interfaces
.implements Lorg/chromium/base/CommandLine$ResetListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCommandLineReset()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    # setter for: Lorg/chromium/chrome/browser/util/FeatureUtilities;->sDocumentModeDisabled:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 184
    return-void
.end method
