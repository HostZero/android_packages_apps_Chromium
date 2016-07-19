.class public interface abstract Lorg/chromium/mojom/mojo/TcpConnectedSocket;
.super Ljava/lang/Object;
.source "TcpConnectedSocket.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/mojo/TcpConnectedSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/TcpConnectedSocket;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
