.class Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage$1;
.super Ljava/lang/Object;
.source "PhysicalWebDiagnosticsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->access$000(Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->access$000(Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->createListUrlsIntent(Landroid/content/Context;)Landroid/content/Intent;
    invoke-static {v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebDiagnosticsPage;->access$100(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
