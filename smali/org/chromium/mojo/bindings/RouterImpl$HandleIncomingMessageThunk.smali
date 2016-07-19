.class Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# instance fields
.field final synthetic this$0:Lorg/chromium/mojo/bindings/RouterImpl;


# direct methods
.method private constructor <init>(Lorg/chromium/mojo/bindings/RouterImpl;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/bindings/RouterImpl;Lorg/chromium/mojo/bindings/RouterImpl$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;-><init>(Lorg/chromium/mojo/bindings/RouterImpl;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    # invokes: Lorg/chromium/mojo/bindings/RouterImpl;->handleIncomingMessage(Lorg/chromium/mojo/bindings/Message;)Z
    invoke-static {v0, p1}, Lorg/chromium/mojo/bindings/RouterImpl;->access$000(Lorg/chromium/mojo/bindings/RouterImpl;Lorg/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    # invokes: Lorg/chromium/mojo/bindings/RouterImpl;->handleConnectorClose()V
    invoke-static {v0}, Lorg/chromium/mojo/bindings/RouterImpl;->access$100(Lorg/chromium/mojo/bindings/RouterImpl;)V

    .line 39
    return-void
.end method
