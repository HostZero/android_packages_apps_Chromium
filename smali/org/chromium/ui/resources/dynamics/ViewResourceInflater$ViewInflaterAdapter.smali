.class Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;
.super Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
.source "ViewResourceInflater.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;->this$0:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;

    .line 342
    invoke-direct {p0, p2}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;-><init>(Landroid/view/View;)V

    .line 343
    return-void
.end method


# virtual methods
.method protected onCaptureEnd()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;->this$0:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;

    # invokes: Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->onCaptureEnd()V
    invoke-static {v0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->access$100(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;)V

    .line 348
    return-void
.end method
