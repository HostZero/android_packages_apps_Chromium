.class Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer$1;
.super Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;
.source "FirstRunFlowSequencer.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/services/AndroidEduAndChildAccountHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onParametersReady()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer$1;->this$0:Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer$1;->isAndroidEduDevice()Z

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer$1;->hasChildAccount()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->processFreEnvironment(ZZ)V

    .line 70
    return-void
.end method
