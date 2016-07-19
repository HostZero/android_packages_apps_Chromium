.class final Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar$1;
.super Landroid/text/style/ClickableSpan;
.source "DownloadOverwriteInfoBar.java"


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dirNameIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar$1;->val$dirNameIntent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar$1;->val$dirNameIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
