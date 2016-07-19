.class public interface abstract Lorg/chromium/mojom/mojo/TcpServerSocket;
.super Ljava/lang/Object;
.source "TcpServerSocket.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/mojo/TcpServerSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/TcpServerSocket;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/TcpServerSocket$AcceptResponse;)V
.end method
