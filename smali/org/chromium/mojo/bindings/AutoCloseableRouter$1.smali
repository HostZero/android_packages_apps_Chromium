.class Lorg/chromium/mojo/bindings/AutoCloseableRouter$1;
.super Ljava/lang/Object;
.source "AutoCloseableRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/mojo/bindings/AutoCloseableRouter;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/bindings/AutoCloseableRouter;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter$1;->this$0:Lorg/chromium/mojo/bindings/AutoCloseableRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter$1;->this$0:Lorg/chromium/mojo/bindings/AutoCloseableRouter;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->close()V

    .line 109
    return-void
.end method
