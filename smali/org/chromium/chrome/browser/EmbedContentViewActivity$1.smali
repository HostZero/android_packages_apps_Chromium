.class Lorg/chromium/chrome/browser/EmbedContentViewActivity$1;
.super Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;
.source "EmbedContentViewActivity.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/EmbedContentViewActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/EmbedContentViewActivity;Z)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/chromium/chrome/browser/EmbedContentViewActivity$1;->this$0:Lorg/chromium/chrome/browser/EmbedContentViewActivity;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected isAllowedToLaunchDocumentActivity(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunFlowSequencer;->checkIfFirstRunIsNecessary(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
