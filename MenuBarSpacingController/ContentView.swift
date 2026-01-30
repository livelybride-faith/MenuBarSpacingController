import SwiftUI

struct ContentView: View {
    @State private var spacing: Double = 6
    @State private var statusMessage: String = "Adjust slider and apply"

    var body: some View {
        VStack(spacing: 15) {
            Text("Menu Bar Density")
                .font(.system(size: 14, weight: .bold))

            // The Slider
            VStack {
                Slider(value: $spacing, in: 0...20, step: 1) {
                    Text("Spacing")
                }
                HStack {
                    Text("Tight (0)")
                    Spacer()
                    Text("Current: \(Int(spacing))")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("Wide (20)")
                }
                .font(.caption2)
                .foregroundColor(.secondary)
            }
            .padding(.horizontal)

            Divider()

            HStack(spacing: 12) {
                // Apply Button
                Button("Apply Changes") {
                    applySpacing(Int(spacing))
                }
                .buttonStyle(.borderedProminent)

                // Reset Button
                Button("Restore Default") {
                    resetToDefault()
                }
            }
            
            Text(statusMessage)
                .font(.system(size: 10))
                .foregroundColor(.gray)
        }
        .padding()
        .frame(width: 300, height: 200)
    }

    // MARK: - Logic functions
    
    func applySpacing(_ value: Int) {
        statusMessage = "Refreshing Control Center..."
        let script = """
        defaults -currentHost write -globalDomain NSStatusItemSpacing -int \(value);
        defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int \(value);
        killall ControlCenter
        """
        runShell(script)
    }

    func resetToDefault() {
        statusMessage = "Restoring system defaults..."
        let script = """
        defaults -currentHost delete -globalDomain NSStatusItemSpacing;
        defaults -currentHost delete -globalDomain NSStatusItemSelectionPadding;
        killall ControlCenter
        """
        runShell(script)
    }

    func runShell(_ command: String) {
        let task = Process()
        task.launchPath = "/bin/zsh"
        task.arguments = ["-c", command]
        task.launch()
        task.waitUntilExit()
    }
}
