//
//  Log.swift
//  Qlax
//
//  Created by Andrew Skrypnik on 21.11.16.
//  Copyright © 2016 IDA All rights reserved.
//

import UIKit
import Concepter_Log
import AEConsole
import AELog

open class Log: Logger {
    public static let shared = Logger(formatter: .detailed)

    /// Configures delegate for `AEConsole` singleton. Use it if you need additional functionality after each line of log.
    open class func launch(with application: UIApplicationDelegate) {

        AEConsole.launch(with: application)

        Log.shared.didLog = { (string) in
            aelog(string)
        }
    }
}

extension Formatters {
    
    static let detailed = Formatter("[%@] %@ %@.%@:%@ | %@", [
        .date("HH:mm:ss.SSS"),
        .level,
        .file(fullPath: false, fileExtension: false),
        .function,
        .line,
        .message
        ])
}

extension Themes {
    public static let Default = Theme(
        trace:   "#C8C8C8",
        debug:   "#0000FF",
        info:    "#00FF00",
        warning: "#FFFB00",
        error:   "#FF0000"
    )
}
