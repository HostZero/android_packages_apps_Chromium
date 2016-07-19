.class final Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$1;
.super Ljava/lang/Object;
.source "DataUseTabUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {v3}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->recordDataUseUIAction(I)V

    .line 174
    return-void
.end method
